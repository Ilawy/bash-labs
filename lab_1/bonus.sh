# 1. Get the sum of accounts id’s that has the same group.
awk '
BEGIN{
    FS=":"

}
{
    if(map[$4]){
        map[$4] = map[$4] + $3
    }else{
        map[$4] = $3
    }
}
END{
    for (id in map){
        print id,":",map[id]
    }
}
' /etc/passwd

# REPORT
awk '
BEGIN{
    FS=":"
    print "User-Group Report"
    print "-----------------"
}
{
    oldofs = OFS
    OFS=""
    print $1,":"
    OFS = oldofs
    split($4, parts, ",")
    for(part in parts){
        print "user",part,":",parts[part]
    }
    print "----------------"
}
END{

}
' /etc/group
