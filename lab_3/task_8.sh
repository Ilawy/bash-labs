# 8. Create the following menu:
# a. Press 1 to ls
# b. Press 2 to ls –a
# c. Press 3 to exit
# Using select utility then while utility

select choice in a b c; do
    case "$choice" in
    a)
        echo $(ls)
        ;;
    b)
        echo $(ls -a)
        ;;
    c)
        exit 0
        ;;
    *)
        printf "USAGE:\n\t1: ls\\n\t2: ls -a\\n\t3: exit\n"
        ;;
    esac
done
