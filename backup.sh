
date=`date +%Y.%m.%d`
for d in .ssh .thunderbird
do
    echo Backing up $HOME/$d to $HOME/Backup/$d-$date.tar.gz
    tar -C $HOME -czf $HOME/Backup/$d-$date.tar.gz $d
done

