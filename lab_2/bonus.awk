{    
    gsub(/'/, "")
    split($0, r, " -- ")
    print r[2]
}