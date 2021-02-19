#! /bin/sh -e
df -h
cat /proc/cpuinfo
free -h
ls -l /usr/bin
ls -l /usr/local/bin
ps -afx
echo -------------------------
#cat /home/travis/build.sh
CFLAGS="-g" ./build.sh

if [ ! -d .tup ]; then
	./build/tup init
fi
./build/tup upd
echo "Build complete. If ./tup works, you can remove the 'build' directory."
