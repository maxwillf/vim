echo "Installing"

cp .vimrc ~/
#mkdir -p ~/.vim
mkdir -p ~/.vim/autoload
cp plug.vim ~/.vim/autoload

vim +PlugInstall +qa!

echo "Done"
