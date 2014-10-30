.PHONY : install

install : syntax/absperfos400.vim indent/absperfos400.vim
	mkdir -vp ~/.vim/syntax ~/.vim/indent
	cp -vt ~/.vim/indent ./indent/absperfos400.vim
	cp -vt ~/.vim/syntax ./syntax/absperfos400.vim
