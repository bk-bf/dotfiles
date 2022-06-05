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
alias std="shutdown now"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/dotfiles.git --work-tree=$HOME'

# alias for execs	
alias vim="nvim" 
alias btop="btop --utf-force"
alias nmutt="neomutt"

# alias for configs	
alias zshc="vim ~/.zshrc"
alias i3c="vim ~/.config/i3/config"
alias kittycu="vim ~/.config/kitty/kitty.conf.user"
alias kittyc="vim ~/.config/kitty/kitty.conf"
alias polyc="vim ~/.config/polybar/config.ini"
alias nvimc="vim ~/.config/nvim/init.vim"
alias picomc="vim ~/.config/picom.conf"
alias btopc="vim ~/.config/btop/btop.conf"
