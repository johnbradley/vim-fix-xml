" fix-xml.vim - saves current document and fixes it's xml
" Maintainer:   John Bradley
" Version:      1.0

function FixXML()
  "save and run xmllint on our file saving output
  let tempfile = tempname()
  exec "sav! " . tempfile
  let outfile = tempname()
  let result = system("xmllint --format " . tempfile . ">" . outfile . "; echo -n $?")
  if result == "0" 
	 "delete everything
     1,$delete
	 "replace it with the result of xmllint
     exec "read ++edit" . outfile
	 "delete the blank line at the top
	 1,1delete
	 redraw!
  else
     let clean_result = substitute(result, tempfile, "Error", '')
     echo clean_result
  endif
endfunction

:command FX :call FixXML()
