```
ctags -R --languages=python --python-kinds=-i
find . -name '*.py' > cscope.files
cscope -bqR

```
```
find . -name '*.py' > cscope.files
cscope -R
ctags -R
vim <filename>
```
