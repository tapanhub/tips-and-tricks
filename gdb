compile with flag '-ggdb3' to add more debug info
  e.g. gcc -ggdb3 hello.c -o hello
start gdb command: gdb ./hello

gdb> start: to start the program & break at main function

key: 'ctrl + x + a' = toggle to/from TUI mode
key: 'ctrl + l' = refresh the screen
key: 'ctrl + p' , 'ctrl + n' : prev and next commands
key: 'ctrl + x + 2' 2nd window, cycle through - assembly
key: 'ctrl + x + 1' 1st window
python:
-------
gdb> python
> import os
>print('I am pid %d'% os.getpid())
>end
shell:
-----
gdb> shell ps

gdb python module gives most access to gdb
gdb> python gdb.execute() to do gdb commands
gdb> python gdb.parse_and_eval() got get data from inferior
gdb> python help('gdb') to see online help

my ~/.gdbinit is nice and simple:
set history save on
set print pretty on
set pagination off
set confirm off
gdb> info signals -- prints all signals
gdb> handle SIGINT stop print pass -- when program handles from

watch points:
--------------
watch foo -- stop when foo is modified
watch -l foo -- watch location
rwatch foo  -- stop when foo is read
watch foo thread 3  -- stop when thread 3 modifies foo

watch foo if foo > 10 stop when foo is > 10

thead apply:
------------
info theads
thread apply 1-4 print $sp
thread apply all backtrace
thread apply all backtrace full

dynamic printf
--------------

use dprintf to put printf's in your code without recompiling e.g.
dprintf mutex_lock, "m is %p m->magic is %u\n",m,m->magic
set dprintf-style gdb|call |agent
set dprintf-function fprintf
set dprintf-channel mylog

calling inferior functions
--------------------------
call foo() -- call foo() function in our inferior

print foo()
print foo + bar
print errno
-- below will call strcpy and malloc
call strcpy(buffer, "hello, world!\n")

catch points:
--------------
catch catch to stop when c+ excetipons are caught
catch syscall nanosleep -- to stop at nanosleep sys call
catch syscall 100 -- to stop at system call number 100

Multiprocess debugging:
----------------------
set follow-fork-mode child|parent
set detach-on-fork off
info inferiors
inferior N
set follow-exec-mode new|same
add-inferior <count> <name>
remove-inferior N
clone-inferior
print $_inferior

misc
--------
tbreak -- temporary breakpoint
rbreak -- reex breakpoint - break on all funcion of a library
command -- list of commands to be exected when breakpoint is hit
silent -- special command to suppres output on breakpoint hit
save breakpoints -- save list of breakpoints to a script
save history -- save gdb command history
info line foo.c:42 show PC for line
info line * $pc -- show line begin/end for current program counter
gcc's -g and -O are orthogonal , gcc -Og is optimized but does not mess up debug
-ggdb3 is better than -g

