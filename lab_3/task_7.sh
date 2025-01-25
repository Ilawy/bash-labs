typeset -i n1
typeset -i n2

n1=1
n2=1

while test $n1 -eq $n2; do
    n2=$n2+1
    echo $n1
    #^^^ this example is written for ksh, which is not the shell i'm currently using
    if [ $n1 -gt $n2 ]; then
        break
    else
        continue
    fi
    # ^^^ Next lines won't run because in either case nothing will be executed
    n1=$n1+1
    echo $n2
    #^^^ same as above
done
# the output will be 1
