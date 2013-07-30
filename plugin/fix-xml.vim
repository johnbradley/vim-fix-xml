" fix-xml.vim - saves current document and fixes it's xml
" Maintainer:   John Bradley
" Version:      1.0

function FixXML()
  "save and run xmllint on our file saving output
  w!
  let outfile = tempname()
  let result = system("xmllint --format " . @% . ">" . outfile . "; echo -n $?")
  if result == "0" 
	 "delete everything
     1,$delete
	 "replace it with the result of xmllint
     exec "read ++edit" . outfile
	 "delete the blank line at the top
	 1,1delete
	 redraw!
  else
     echo result
  endif
endfunction

:command FX :call FixXML()
