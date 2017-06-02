# adding new lines to hosts file 

# host file location
# for Win
# hostFileLocation=/cygdrive/c/Windows/System32/drivers/etc/hosts
# for MacOS
hostFileLocation=/private/etc/hosts


# adres IP dla danej domeny
IP=127.0.0.1
# nazwa domenowa
dName=slim1.docker.dev
# alias www
dAliasName=www.slim1.docker.dev

d=$(date +%Y-%m-%d-%s)
cp $hostFileLocation ./hosts.bak.$d
cp $hostFileLocation ./hosts

echo "
# added automatically by hosts.sh scritp from dedicated folder
"$IP" "$dName"
"$IP" "$dAliasName >> ./hosts

cp ./hosts $hostFileLocation 
	