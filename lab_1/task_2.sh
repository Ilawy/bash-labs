# 1- Print full name (comment) of all users in the system.
awk -F : '{
    print $5
}' /etc/passwd

echo '-----------'

# 2- Print login, full name (comment) and home directory of all users.( Print each line preceded by a line number)
awk -F : '{
    print NR,$1,$5,$6
}' /etc/passwd

echo '--------------'

# 3- Print login, uid and full name (comment) of those uid is greater than 500
awk -F : '{
    if ($3 > 500){
        print $1,$3,$5
    }
}' /etc/passwd


echo '-----------------'

# 4- Print login, uid and full name (comment) of those uid is exactly 500
awk -F : '{
    if ($3 == 500){
        print $1,$3,$5
    }
}' /etc/passwd



echo '-----------------'

# 5- Print line from 5 to 15 from /etc/passwd
awk '
BEGIN{
    FS=":"
}
{
    if(NR >= 5 && NR <= 10) print $0
}
END{

}
' /etc/passwd

echo '-----------------'


# 6- Change lp to mylp
awk '
{
    gsub("lp", "mylp")
    print $0
}
END{
}
' /etc/passwd

echo '-----------------'

# 7- Print all information about greatest uid.
awk '
BEGIN{
    FS=":"
    max=0
}
{
    if($3 > max){
        max = $3
        max_content=$0
    }
}
END{
    print max_content
}
' /etc/passwd

echo '-----------------'

# 8- Get the sum of all accounts id’s.
awk '
BEGIN{
    FS=":"
    sum = 0
}
{
    sum = sum + $3
}
END{
    print sum
}
' /etc/passwd
