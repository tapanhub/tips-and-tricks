**cgroup mapping**
kubectl -it exec podname -n <namespace> 
sudo cat /proc/1/cgroup
host group: /sys/fs/cgroup/memory/
https://www.kernel.org/doc/Documentation/cgroup-v1/memory.txt
