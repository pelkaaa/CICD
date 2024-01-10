#!/usr/bin/bash

scp -r src/cat/s21_cat src/grep/s21_grep root@10.10.0.2:/home/insaide/ echo $insaide
ssh insaide@10.10.0.2 "echo $insaide | sudo -S mv /home/insaide/cat /home/insaide/grep $directory"
ssh insaide@10.10.0.2 ls /usr/local/bin


# scp - это команда для копирования файлов по SSH
# -r флаг указывающий scp копировать директории рекурсивно
# echo команда для вывода текста в терминал (в данном случае вывода пароля)
# ssh - команда для удаленного выполнения команд по SSH
# sudo с опцией -S означает, что sudo не будет запрашивать пароль через стандартный ввод, а вместо этого будет использовать ввод через трубу (pipe)
# mv - это команда для перемещения файлов/директорий с одного места в другое
#please 
#please 

