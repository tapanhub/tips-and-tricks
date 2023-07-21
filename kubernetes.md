**cgroup mapping**
-----
  kubectl -it exec podname -n <namespace> 
  sudo cat /proc/1/cgroup
  host group: /sys/fs/cgroup/memory/
  https://www.kernel.org/doc/Documentation/cgroup-v1/memory.txt
  ```
  ls -1 | while read fl; do val=$(cat ${fl} 2>/dev/null); echo "file:${fl}=${val}" >> /tmp/docker_memctrlgr.txt; done
  ```
  *logging*
  ```
  kubectl get events -n default
  ```
  *Get cpuset info inside container*
  ```
  cat /sys/fs/cgroup/cpuset/cpuset.cpus
  ```
