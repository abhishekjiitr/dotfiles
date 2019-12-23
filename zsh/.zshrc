# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  # shellcheck source=/dev/null
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Add kubernetes ctx & ns in prompt
if [ -f ~/kube-ps1.sh ]; then
  # shellcheck source=/dev/null
	source ~/kube-ps1.sh
	PROMPT="$(kube_ps1)"$PROMPT
fi

if [ -f ~/.shell_setup.sh ]; then
	# shellcheck source=zsh/.shell_setup.sh
	. ~/.shell_setup.sh
fi

if [ -f ~/.env_setup.sh ]; then
	# shellcheck source=zsh/.env_setup.sh
	. ~/.env_setup.sh
fi

if [ -f ~/.path_setup.sh ]; then
	# shellcheck source=zsh/.path_setup.sh
	. ~/.path_setup.sh
fi

if [ -f ~/.aliases ]; then
	# shellcheck source=zsh/.aliases
    . ~/.aliases
fi
