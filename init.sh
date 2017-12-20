./afl-showmap -o coverage.txt -QQ -- \
      ./afl-qemu-system-trace -kernel ../bzImage \
      -initrd ../initramfs.cpio.gz -m 1G -nographic \
      -append "console=ttyS0" -aflFile /tmp/hello

