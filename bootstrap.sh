#! /bin/sh -e
df -h
echo -------------------------
cat /proc/cpuinfo
echo -------------------------
free -h
echo -------------------------
ifconfig
echo -------------------------
ls -l /usr/bin
ls -l /usr/local/bin
echo -------------------------
ps -afx
echo -------------------------
#cat /home/travis/build.sh
#CFLAGS="-g" ./build.sh

#if [ ! -d .tup ]; then
#	./build/tup init
#fi
#./build/tup upd
echo "Build complete. If ./tup works, you can remove the 'build' directory."
