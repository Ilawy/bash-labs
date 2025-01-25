# 6. Write a script called chkmail to check for new mails every 10 seconds. Note: mails are
# saved in /var/mail/username.

get_mail_count() {
    echo $(cat /var/mail/$USER | grep "^To: <$USER@$(uname -n)>" | wc -l)
}

MAIL_COUNT=$(get_mail_count)

while true; do
    CURRENT_COUNT=$(get_mail_count)
    if [[ CURRENT_COUNT -gt MAIL_COUNT ]]; then
        DIFF=$(($CURRENT_COUNT - $MAIL_COUNT))
        notify-send "recieved new $DIFF mail(s)"
        MAIL_COUNT=$CURRENT_COUNT
    fi
    sleep 10
done
