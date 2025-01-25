# 6. Enhance the above script to support the following options individually:
    # a. –l: list in long format
    # b. –a: list all entries including the hiding files.
    # c. –d: if an argument is a directory, list only its name
    # d. –i: print inode number
    # e. –R: recursively list subdirectories
OPTS=""

[[ "$@" = *"--l"* ]] && OPTS+=" -l"
[[ "$@" = *"--a"* ]] && OPTS+=" -a"
[[ "$@" = *"--d"* ]] && OPTS+=" -d"
[[ "$@" = *"--i"* ]] && OPTS+=" -i"
[[ "$@" = *"--R"* ]] && OPTS+=" -R"


ls $OPTS "${@: -1}"


