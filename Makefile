
install:
	@source scripts/install/fedora.sh
	@echo "💚 Installing dotly" && export DOTFILES_PATH="$HOME/.dotfiles" && export DOTLY_PATH="$DOTFILES_PATH/modules/dotly" && "$DOTLY_PATH/bin/dot" self install
	@rm -rf "~/dotly.log" && echo "👌 DONE!"