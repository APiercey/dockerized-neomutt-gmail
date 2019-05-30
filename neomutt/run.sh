export IFS=" "
touch ~/.mutt/mailboxes.muttrc

for word in $MAILBOXES; do
  echo "mailboxes ${word}" >> ~/.mutt/mailboxes.muttrc
done

neomutt
