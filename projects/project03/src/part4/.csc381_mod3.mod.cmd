cmd_/mnt/hgfs/project03/src/part4/csc381_mod3.mod := printf '%s\n'   csc381_mod3.o | awk '!x[$$0]++ { print("/mnt/hgfs/project03/src/part4/"$$0) }' > /mnt/hgfs/project03/src/part4/csc381_mod3.mod
