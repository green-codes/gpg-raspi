# send the current public ring to raspi and import it there
USER=gcodes
HOST=codes-aux-sec.local

gpg --batch -o inbox.gpg --export
scp inbox.gpg $USER@$HOST:/home/$USER/
ssh $USER@$HOST -- "gpg --batch --import /home/$USER/inbox.gpg && rm /home/$USER/inbox.gpg"
rm inbox.gpg
