# 9. Write a script called myarr that ask a user how many elements he wants to enter in an
# array, fill the array and then print it

read -p "how many elements do you want to enter?: " elms_n
RESULT=()
for ((i = 0; i < $elms_n; i++)); do
    read -p "?> " value
    RESULT[i]=$value
done

echo "${RESULT[@]}"
