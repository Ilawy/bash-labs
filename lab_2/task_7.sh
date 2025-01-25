# 7. Create a script called mytest where:
    # a. It check the type of the given argument (file/directory)
    # b. It check the permissions of the given argument (read/write/execute)


result=""
SEP="\t"


if [[ $# -ne 1 ]] then
    echo "one argument is required"
    exit 1
fi

if [[ -d $1 ]] then
    result+="directory${SEP}"
elif [[ -f $1 ]] then
    result+="file$SEP"
else
    echo "cannot access $1"
    exit 1;
fi

if [[ -r $1 ]] then 
    result+="YES${SEP}"
else
    result+="NO${SEP}"
fi    

if [[ -w $1 ]] then 
    result+="YES${SEP}"
else
    result+="NO${SEP}"
fi    

if [[ -x $1 ]] then 
    result+="YES${SEP}"
else
    result+="NO${SEP}"
fi    



echo -e "TYPE${SEP}READ${SEP}WRITE${SEP}EXEC"
echo -e $result