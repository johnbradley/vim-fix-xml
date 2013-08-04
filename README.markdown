# fix-xml.vim

Adds a function/command to format the current xml file using xmllint --format.
The command is mapped to ":FX" run this in any xml file.
If there is an error the error will be shown.
This requires xmllint to be installed and in your $PATH.

## Installation

from the command line run the following:

cd ~/.vim/plugin
wget http://raw.github.com/johnbradley/vim-fix-xml/master/fix-xml.vim  --no-check-certificate
put fix-xml.vimo

then add th following to ~/.vimrc:
:command FX :call FixXML()
