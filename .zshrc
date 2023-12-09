# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch
	
# alias for commands
alias ls="ls -a"
alias cl="clear"
alias off="shutdown now"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/dotfiles.git --work-tree=$HOME'
alias pacman='sudo pacman'
alias ra='ranger'
alias cm="cmatrix -ba -u 2"
alias sound="pavucontrol"

# alias for execs	
alias btop="btop --utf-force"
alias nfetch="neofetch"

# alias for configs	
alias zshc="sudo nvim ~/.zshrc"
alias i3c="sudo nvim ~/.config/i3/config"
alias kittycu="sudo nvim ~/.config/kitty/kitty.conf.user"
alias kittyc="sudo nvim ~/.config/kitty/kitty.conf"
alias polyc="sudo nvim ~/.config/polybar/config.ini"
alias nvimc="sudo nvim ~/.config/nvim/init.vim"
alias picomc="sudo nvim ~/.config/picom.conf"
alias btopc="sudo nvim ~/.config/btop/btop.conf"
alias rimup="sudo ~/scripts/hsk_rim_installer.sh"




source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
