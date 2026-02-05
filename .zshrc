# ============================================================================
# Oh My Zsh
# ============================================================================

# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="jonathan"

# Plugins
plugins=(
  git
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ============================================================================
# Basic Settings
# ============================================================================

# Language
export LANG=ja_JP.UTF-8

# Editor
export EDITOR=nvim
export VISUAL=nvim

# ============================================================================
# Zsh Options
# ============================================================================

# ディレクトリ移動
setopt auto_cd              # ディレクトリ名だけで移動
setopt auto_pushd           # cd時に自動でディレクトリスタックに追加
setopt pushd_ignore_dups    # 重複したディレクトリはスタックに追加しない

# 履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt hist_ignore_dups     # 直前と同じコマンドは履歴に追加しない
setopt hist_ignore_all_dups # 重複するコマンドは古い方を削除
setopt hist_save_no_dups    # 重複するコマンドは保存しない
setopt share_history        # 履歴を共有
setopt hist_reduce_blanks   # 余分な空白を削除

# その他
setopt no_beep              # ビープ音を鳴らさない
setopt correct              # コマンドのスペルミスを修正
setopt interactive_comments # コマンドラインでも#以降をコメントと見なす

# ============================================================================
# Aliases
# ============================================================================

alias vi='nvim'
alias vim='nvim'
alias grep='grep --color=auto'

# ============================================================================
# Environment Specific Settings
# ============================================================================

# Local bin
if [[ -f "$HOME/.local/bin/env" ]]; then
  . "$HOME/.local/bin/env"
fi
export PATH="$HOME/.local/bin:$PATH"

# PostgreSQL
export PATH="$(brew --prefix postgresql@17)/bin:$PATH"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH="$JAVA_HOME/bin:$PATH"

