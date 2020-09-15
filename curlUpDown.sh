#!/bin/bash
# upload file
$1=$file
$2=$user
$3=$pass
$4=$serv
if [$5==u]
then
	curl -T $file ftp://$user:$pass@$serv
else
	curl -u $user:$pass  -O ftp://$serv/$file
fi
