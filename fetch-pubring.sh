# fetch the (signed) pubring from raspi and import it
USER=gcodes
HOST=codes-aux-sec.local

ssh $USER@$HOST -- "gpg --export" | gpg --batch --import
