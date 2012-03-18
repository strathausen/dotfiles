if did_filetype()
  finish
endif
if getline(1) =~ '^#!.*\<coffee\>'
  setfiletype coffee
endif
