@echo off
make clean
make clean_data
call clean.bat
make data
make depend
make
