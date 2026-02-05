#!/bin/bash

set -e  # エラーで停止

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

echo "🚀 Dotfiles setup starting..."

# バックアップ関数
backup_if_exists() {
    if [ -e "$1" ] && [ ! -L "$1" ]; then
        echo "📦 Backing up $1"
        mkdir -p "$BACKUP_DIR"
        mv "$1" "$BACKUP_DIR/"
    fi
}

# シンボリックリンク作成関数
create_symlink() {
    local src="$1"
    local dest="$2"

    backup_if_exists "$dest"

    if [ -L "$dest" ]; then
        rm "$dest"
    fi

    ln -s "$src" "$dest"
    echo "✅ Linked: $dest -> $src"
}

# 1. Oh My Zshのインストール
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "📥 Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "✅ Oh My Zsh already installed"
fi

# 2. Oh My Zshプラグインのインストール
install_omz_plugin() {
    local plugin_name="$1"
    local plugin_url="$2"
    local plugin_dir="$HOME/.oh-my-zsh/custom/plugins/$plugin_name"

    if [ ! -d "$plugin_dir" ]; then
        echo "📥 Installing $plugin_name..."
        git clone "$plugin_url" "$plugin_dir"
    else
        echo "✅ $plugin_name already installed"
    fi
}

install_omz_plugin "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions"
install_omz_plugin "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting.git"
install_omz_plugin "zsh-completions" "https://github.com/zsh-users/zsh-completions"

# 3. シンボリックリンクの作成
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

echo ""
echo "✨ Setup complete!"
[ -d "$BACKUP_DIR" ] && echo "📦 Backups saved to: $BACKUP_DIR"
echo "🔄 Run 'source ~/.zshrc' to apply changes"
