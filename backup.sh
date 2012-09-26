echo "===================="
date
mkdir -p $HOME/Backup
date=`date +%Y.%m.%d`
for d in .ssh .thunderbird .mozilla
do
    echo Backing up $HOME/$d to $HOME/Backup/$d-$date.tar.gz
    tar -C $HOME -czf $HOME/Backup/$d-$date.tar.gz $d
done
date
echo "===================="


