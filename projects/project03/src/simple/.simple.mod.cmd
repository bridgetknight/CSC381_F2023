cmd_/mnt/hgfs/project03/src/simple.mod := printf '%s\n'   simple.o | awk '!x[$$0]++ { print("/mnt/hgfs/project03/src/"$$0) }' > /mnt/hgfs/project03/src/simple.mod
