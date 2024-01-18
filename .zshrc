# Command prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}[%T] %n@%m%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Command output colors
export CLICOLOR=1

# Command syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Locales
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Aliases
command -v vim >/dev/null 2>&1 && alias vi="vim"
alias zshrc="vi ~/.zshrc"

