#!/bin/sh
set -e

mkdir -p ~/.vim
cd ~/.vim
wget -O cvim.zip http://www.vim.org/scripts/download_script.php?src_id=9679
unzip cvim.zip

sed -i 's/Dr. Fritz Mehner/Alex Beattie/g' ~/.vim/c-support/templates/Templates
sed -i 's/mn/AB/g' ~/.vim/c-support/templates/Templates
sed -i 's/mehner@fh-swf.de/akbkx8@mail.missouri.edu/g' ~/.vim/c-support/templates/Templates
sed -i 's/FH Südwestfalen, Iserlohn/Mizzou Computer Science/g' ~/.vim/c-support/templates/Templates

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
