# core dump
## Enable coredump  
- /etc/security/limits.conf
- ulimit -S -c unlimited > /dev/null 2>&1
- sudo sysctl -w kernel.core_pattern=/tmp/core_%e_%p_%h_%t
- sudo sysctl -w kernel.core_uses_pid=1
- sudo sysctl -w fs.suid_dumpable=1
- cat /proc/sys/kernel/core_pattern

