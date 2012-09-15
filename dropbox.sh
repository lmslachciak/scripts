for d in Muzyka Dokumenty Obrazy Wideo Backup
do
  src="/home/lukasz/$d"
  dst="/home/lukasz/Dropbox/$d"
  #check if there is not link already
  if ! [ -L $src ]
  then
    #if it is directory
    if [ -d $src ]
      #try to remove it
      then rmdir $src
    fi
    #if we don't have here anything
    if ! [ -e $src ]
    then
      #if there is no dest directory
      if ! [ -d $dst ]
        #create it
        then mkdir $dst
      fi
      #finally make symbolic link
      echo making symbolic link from $src to $dst
      ln -s $dst $src
    fi
  else
    echo "skipping $src"
  fi
done
