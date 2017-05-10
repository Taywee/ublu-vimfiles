# Ublu Vim syntax files

Some simple syntax files to improve quality of life working with Jack Woehr's [Ublu](https://github.com/jwoehr/ublu) software and scripting language.

# Install

The best way to install this is to use pathogen, or bundler, or better yet, the native Vim 8.0+ or NeoVim packages.

If you want to dump it into a vim directory, you can use the makefile:

```sh
make install
```

Do not run the installation as root.  It will install into ~/.vim.  If you don't have a ~/.vim (like you are on windows) or your vim directory is somewhere else (like with NeoVim), use VIMHOME to point to your home vim install:

```sh
make VIMHOME=/vimfiles install
```

# Uninstall

```sh
make uninstall
```

or

```sh
make VIMHOME=/vimfiles uninstall
```
