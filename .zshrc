HOSTNAME=$(hostname)
alias v=~/scripts/auto-cd.nvim
alias t=tofu
alias pandas_build="python -m pip install -ve . --no-build-isolation --config-settings editable-verbose=true"
alias ranger="pipx run --spec ranger-fm ranger"
# alias fzip=~/scripts/fzip

# fzf
source <(fzf --zsh)

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# bat
export BAT_THEME="gruvbox-dark"

# thefuck
eval $(thefuck --alias)


# go
export PATH=$PATH:$HOME/go/bin

export MANPAGER="nvim +Man!"

. "$HOME/.cargo/env"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(
  zsh-completions
  fzf
  fzf-tab
  zsh-autosuggestions
  zsh-syntax-highlighting
)

bindkey '^Y' autosuggest-accept

source $ZSH/oh-my-zsh.sh
