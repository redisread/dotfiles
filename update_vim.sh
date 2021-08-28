function main(){
if [ ! -f "/etc/redhat-release" ]; then
	apt install git make clang libtool-bin -y
	apt install libncurses5-dev \
	libgtk2.0-dev libatk1.0-dev \
	libcairo2-dev python-dev \
	python3-dev -y
else
	yum install curl git iproute2 python3-pip tmux vim-gtk zsh \
	gnupg htop jq pass pwgen rsync shellcheck unzip -y
	yum install make clang libtool-bin -y
fi
git clone https://github.com/vim/vim.git /opt/vim
cd /opt/vim/src
make
#make test
make install
cd -
}

main