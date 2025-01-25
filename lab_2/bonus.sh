
# usage() { echo "Usage: $0 [-s <45|90>] [-p <string>]" 1>&2; exit 1; }

OPTS=$(getopt -o "" --long "long,all,recursive,inode" -- $@)

FINAL=$(echo $OPTS | awk '
{    
    if ($0 ~ /--long/) printf "-l "
    if ($0 ~ /--recursive/) printf "-R "
    if ($0 ~ /--all/) printf "-a "
    if ($0 ~ /--inode/) printf "-i "
}'
)

TARGET=$(echo $OPTS | awk -f bonus.awk)




echo $TARGET
ls $FINAL $TARGET