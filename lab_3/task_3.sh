# 3. Write a script called mychmod using for utility to give execute permission to all files and directories in your home directory.

if [[ -z $1 ]]; then
    echo "at least one argument is required"
    exit 1
fi

read -p "UNSAFE DO NOT RUN"
read -p "DO NOT PROCEED"
read -p "THIS IS INSANE"
read -p "ARE YOU SURE?"

chmod +x /home/$USER/*
