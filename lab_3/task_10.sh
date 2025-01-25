# 10.Write a script called myavg that calculate average of all numbers entered by a user.
# Note: use arrays

read -p "how many elements do you want to enter?: " elms_n
RESULT=()
for ((i = 0; i < $elms_n; i++)); do
    read -p "?> " value
    RESULT[i]=$value
done
avg=0
for ((i = 0; i < $elms_n; i++)); do
    avg=$((RESULT[i] + $avg))
done

echo $(($avg / $elms_n))
