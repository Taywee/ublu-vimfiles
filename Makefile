.PHONY : install uninstall

install : syntax/ublu.vim indent/ublu.vim ftdetect/ublu.vim
	mkdir -vp ~/.vim/syntax ~/.vim/indent ~/.vim/ftdetect
	cp -vt ~/.vim/indent ./indent/ublu.vim
	cp -vt ~/.vim/syntax ./syntax/ublu.vim
	cp -vt ~/.vim/ftdetect ./ftdetect/ublu.vim

uninstall:
	-rm ~/.vim/indent/ublu.vim ~/.vim/syntax/ublu.vim ~/.vim/ftdetect/ublu.vim
