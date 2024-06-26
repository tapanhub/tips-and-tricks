find . -name '*.py' > cscope.files
cscope -R
ctags -R
vim <filename>
