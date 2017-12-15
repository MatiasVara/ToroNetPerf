One request evlaluation
=======================

ab -c 1 -n 1000 -g stats_apachedocker_1req.data http://212.47.247.255/


Generate files of precise size
==============================

1 GB
----
dd if=/dev/zero of=output.dat  bs=1G  count=1

1 MB
----
dd if=/dev/zero of=output.dat  bs=1G  count=1

1 KB
----
dd if=/dev/zero of=output.dat  bs=1K  count=1
