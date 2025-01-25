# 8. Create a script called myinfo where:
    # a. It asks the user about his/her logname.
    # b. It print full info about files and directories in his/her home directory
    # c. Copy his/her files and directories as much as you can in /tmp directory.
    # d. Gets his current processes status.


read -p "Tell me what's your username" username

ls -la /home/$username
cp /home/$username /tmp/$username -r
ps -u $username