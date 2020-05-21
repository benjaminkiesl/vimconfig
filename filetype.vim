" autocommand to detect .spthy and .sapic files
augroup filetypedetect
au BufNewFile,BufRead *.hs 		setf haskell
au BufNewFile,BufRead *.spthy 	setf spthy
au BufNewFile,BufRead *.gpp 	setf spthy
au BufNewFile,BufRead *.m4	 	setf spthy
au BufNewFile,BufRead *.sapic	setf sapic
augroup END
