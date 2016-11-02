@echo off
python splc.py %1 > %1.cpp
sed -i -n -e :a -e '1,2!{P;N;D;};N;ba' %1.cpp
echo system("echo. & pause");>> %1.cpp
echo }>> %1.cpp
echo }>> %1.cpp
g++ %1.cpp -o %1.exe
rem del %1.cpp
%1.exe