# 1. Write a script called mycase, using the case utility to checks the type of character entered by a user:
    # a. Upper Case.
    # b. Lower Case.
    # c. Number.
    # d. Nothing.



read -p "Please enter something: " user_input
shopt -s extglob

case $user_input in
    +([A-Z]|" "))
        echo "Upper case input"
    ;;
    +([a-z]|" "))
        echo "Lower case input"
    ;;
    +([0-9]))
        echo "number input"
        ;;
    "")
        echo "Nothing recived"
        ;;
    *)
        echo "unhandled input"
        ;;
esac