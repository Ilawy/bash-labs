# 1- Display the lines that contain the word “lp” in /etc/passwd file.
sed -n '/lp/p' /etc/passwd

echo "-------"

# 2- Display /etc/passwd file except the third line.
cat -n /etc/passwd | sed -n '3d;p'

echo "-------"

# 3- Display /etc/passwd file except the last line.
cat -n /etc/passwd | sed -n '$d;p'

echo "--------"

# 4- Display /etc/passwd file except the lines that contain the word “lp”.
cat -n /etc/passwd | sed -n '/lp/d;p'

echo "--------"

# 5- Substitute all the words that contain “lp” with “mylp” in /etc/passwd file.
cat -n /etc/passwd | sed -n 's/lp/mylp/g;p'
