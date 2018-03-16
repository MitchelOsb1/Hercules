CONTENT=$(cat boar.txt)
TIME=" 08:42 AM"
DATE=" 12/21/2018"

echo $CONTENT | at $TIME $DATE
