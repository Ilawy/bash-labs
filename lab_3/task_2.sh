# 2. Enhanced the previous script, by checking the type of string entered by a user:
# a. Upper Cases.
# b. Lower Cases.
# c. Numbers.
# d. Mix.
# e. Nothing.

read -p "Please enter something: " user_input
shopt -s extglob

case $user_input in
# upper
+([A-Z]|" "))
    echo "Upper case input"
    ;;
# lowe
+([a-z]|" "))
    echo "Lower case input"
    ;;
# numbers
+([0-9]))
    echo "number input"
    ;;
+([a-zA-Z0-9]|" "))
    echo "mixed input"
    ;;
# empty
"")
    echo "Nothing recived"
    ;;
*)
    echo "unhandled input"
    ;;
esac
