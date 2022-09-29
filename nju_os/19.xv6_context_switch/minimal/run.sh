#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: alex.chenhui@gmail.com
# Create Time: 2022/09/29-17:34:51
#############################################################
#!/bin/sh 
gcc -static minimal.S -c && ld -o minimal minimal.o
