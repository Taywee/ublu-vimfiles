.PHONY : install

install : syntax/absperfos400.vim indent/absperfos400.vim
	cp -rvt ~/.vim syntax indent
