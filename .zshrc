# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# === Oh My Zsh 基本設定 ===
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# === プラグイン ===
# git        : git エイリアス（gst, gco, gp など）
# z          : 移動履歴から z プロジェクト名 でジャンプ
# fzf        : Ctrl+R であいまい履歴検索
# zsh-autosuggestions     : 入力候補をうっすら表示（→キーで確定）
# zsh-syntax-highlighting : コマンドに色がつく（存在=緑、間違い=赤）
plugins=(
  git
  z
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# === 履歴 ===
HISTSIZE=50000
SAVEHIST=50000
setopt HIST_IGNORE_ALL_DUPS  # 重複を保存しない
setopt HIST_FIND_NO_DUPS     # 検索時に重複を飛ばす
setopt SHARE_HISTORY         # ターミナル間で履歴を共有

# === fcitx5（日本語入力） ===
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# === PATH ===
export PATH="$HOME/.local/bin:$PATH"

# === エイリアス（お好みで） ===
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate -20'

# === Powerlevel10k 設定（自動生成、末尾に置く） ===
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
