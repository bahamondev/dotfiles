echo "🗃 Enable Fedora aditional repositories"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "📦 Installing packages"
sudo dnf install cargo bat lsd ffmpeg ulauncher translate-shell python3-pip fd-find gpaste

echo "🦀 Installing rust crates"
export PATH=$PATH:$HOME/.cargo/bin
cargo install docpars
touch "$HOME"/.cargo/env

echo "🦸 Installing sdk manager"
curl -s "https://get.sdkman.io?rcupdate=false" | bash

echo "🐍 Installing python modules"
pip install todoist-python

echo "⌨ Configure some shortcuts"
gsettings set org.freedesktop.ibus.panel.emoji hotkey []

# TODO gnome extensions
# https://github.com/cyfrost/install-gnome-extensions

# TODO fonts (caskaydia, victor mono, manrope) => https://docs.fedoraproject.org/en-US/quick-docs/fonts/

# TODO add ulauncher plugins from command line

#espanso

echo "🖌 A little bit of styling"
git clone https://github.com/lighttigerXIV/ulauncher-adwaita-gtk4/ /tmp/ulauncher-theme
mkdir -p "$HOME"/.config/ulauncher/user-themes/
cp -r /tmp/ulauncher-theme/src/* "$HOME"/.config/ulauncher/user-themes/
rm -rf /tmp/ulauncher-theme