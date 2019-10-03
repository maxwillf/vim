echo "Installing"

# cp .vimrc ~/
ln -sf `pwd`/.vimrc ~/.vimrc
#mkdir -p ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# mkdir -p ~/.vim/autoload
# cp plug.vim ~/.vim/autoload
vim +PlugInstall +qa!

echo "Done"
