# This is a useful file to have the same aliases/functions in bash and zsh
source "$DOTFILES_PATH/shell/aliases.sh"
source "$DOTFILES_PATH/shell/exports.sh"
source "$DOTFILES_PATH/shell/functions.sh"

ulimit -n 200000
ulimit -u 2048

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Register custom aliases and functions
for aliasToSource in "$DOTFILES_PATH/shell/_aliases/"*; do source "$aliasToSource"; done
for exportToSource in "$DOTFILES_PATH/shell/_exports/"*; do source "$exportToSource"; done
for functionToSource in "$DOTFILES_PATH/shell/_functions/"*; do source "$functionToSource"; done

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
