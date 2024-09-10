if [ $(which brew) ]; then
brew install sqlcmd
else
	echo "brew required to install sqlcmd"
fi
