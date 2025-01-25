# 5. Write a script called mymail using for utility to send a mail to all users in the system.
# Note: write the mail body in a file called mtemplate.

read -p "please enter email (eg. user@host)" target_mail

if [[ -z $target_mail ]]; then
    echo "mail cannot be empty"
    exit 1
fi

mail -s "Hello, world" $target_mail <mtemplate
