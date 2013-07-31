# fix-xml.vim

Adds a function/command to format the current xml file using xmllint --format.
The command is mapped to ":FX" run this in any xml file.
If there is an error the error will be shown.
This requires xmllint to be installed and in your $PATH.

## Installation

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/johnbradley/vim-fix-xml.git
