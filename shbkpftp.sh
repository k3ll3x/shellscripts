#!/bin/bash
ftp -n files.000webhost.com << End
# -n option disables auto-logon
user midifox kellex22
binary
cd tmp
for f in *
do
	put $f
done
End
bye
