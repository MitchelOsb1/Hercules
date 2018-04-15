#i/bin/sh

./manger &

process="$(pgrep crap yes manger)"
manger="$(top -l 1 | grep manger | awk '{print $1}')"

kill -9 $process
kill -9 $manger

rm -rf crap*
