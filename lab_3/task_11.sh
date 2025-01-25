# 11. Write a function called mysq that calculate square if its argument.

sqrt() {
    for ((i = 0; i < $1; i++)); do
        MUL=$(($i * $i))
        if [[ MUL -eq $1 ]]; then
            echo $i
            return 0
        fi
    done
    echo $1
}

if [[ -z $1 ]]; then
    printf "on argument is required\nusage: %s <number>\n" $0
    exit 1
fi

echo $(sqrt $1)
