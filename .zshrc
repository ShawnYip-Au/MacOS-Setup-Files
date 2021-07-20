# Show git current branch name on the right
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
#PROMPT="%K{198}%d%k > "
zstyle ':vcs_info:git:*' formats '%b'

# Configure prompt
PROMPT="%K{198}%d%k > "

# zsh alias
alias ll='ls -laG'

# Change python path to ~/.pyenv/shims/python
eval "$(pyenv init --path)"
