sudo yum install zsh -y
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
chsh -s /bin/zsh
cp .zshrc_copy ~/.zshrc
