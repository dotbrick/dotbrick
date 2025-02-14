if [[ "$(command -v neofetch)" ]]; then
  neofetch
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Init zplug
if [[ -r "$ZPLUG_HOME/init.zsh" ]]; then
  source $ZPLUG_HOME/init.zsh
fi

while read file; do
  source "$file"
done < <(find $HOME/.zshrc.d/*/*.zsh)
