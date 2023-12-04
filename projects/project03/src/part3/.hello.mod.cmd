cmd_/mnt/hgfs/project03/src/mod2_src/hello.mod := printf '%s\n'   hello.o | awk '!x[$$0]++ { print("/mnt/hgfs/project03/src/mod2_src/"$$0) }' > /mnt/hgfs/project03/src/mod2_src/hello.mod
