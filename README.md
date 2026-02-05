# dotfiles

個人的な開発環境の設定ファイル集

## 📋 必要要件

- macOS
- [Homebrew](https://brew.sh/)
- Git
- Neovim (install.shで自動インストール可能)

## 🚀 インストール

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dev/dotfiles
cd ~/dev/dotfiles
./install.sh
```

`install.sh`は以下を自動的に実行します：

- ✅ Oh My Zshのインストール
- ✅ 必須プラグインのインストール（zsh-autosuggestions, zsh-syntax-highlighting, zsh-completions）
- ✅ 設定ファイルのシンボリックリンク作成
- ✅ 既存ファイルのバックアップ

## 📦 含まれる設定

### Zsh (.zshrc)

- **Oh My Zsh** - Zshフレームワーク
- **テーマ**: jonathan
- **プラグイン**:
  - `git` - Git関連のエイリアスと補完
  - `fzf` - 曖昧検索統合（Ctrl+R, Ctrl+T, Alt+C）
  - `zsh-autosuggestions` - コマンド自動提案
  - `zsh-syntax-highlighting` - 構文ハイライト
  - `zsh-completions` - 追加の補完定義

### Neovim (nvim/)

- **LazyVim** - Neovim用モダンな設定フレームワーク
- 初回起動時に自動的にプラグインがインストールされます
- **追加プラグイン**:
  - `hardtime.nvim` - Vimの悪い習慣を改善

## 📁 ファイル構成

```
dotfiles/
├── .zshrc                 # Zsh設定ファイル
├── install.sh             # セットアップスクリプト
├── README.md              # このファイル
└── nvim/                  # Neovim設定
    ├── init.lua           # エントリーポイント
    ├── lazy-lock.json     # プラグインバージョンロック
    └── lua/
        ├── config/        # 基本設定
        │   ├── autocmds.lua
        │   ├── keymaps.lua
        │   ├── options.lua
        │   └── lazy.lua
        └── plugins/       # プラグイン設定
            ├── hardtime.lua
            └── example.lua
```

## 🎨 カスタマイズ

### Zshテーマの変更

`.zshrc`の`ZSH_THEME`を編集：

```bash
ZSH_THEME="your-favorite-theme"
```

### Zshプラグインの追加

`.zshrc`の`plugins`配列に追加：

```bash
plugins=(
  git
  fzf
  # 新しいプラグインをここに追加
)
```

### Neovimプラグインの追加

`nvim/lua/plugins/`に新しい`.lua`ファイルを作成：

```lua
return {
  "author/plugin-name",
  opts = {},
}
```

## 🔗 シンボリックリンク

以下のシンボリックリンクが作成されます：

- `~/.zshrc` → `~/dev/dotfiles/.zshrc`
- `~/.config/nvim` → `~/dev/dotfiles/nvim`

設定の変更は`~/dev/dotfiles`内で行い、Gitで管理します。

## 📝 その他

新しいターミナルを開くか、以下のコマンドで設定を反映：

```bash
source ~/.zshrc
``` 