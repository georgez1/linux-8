#!/bin/bash
read -p "Введите путь: " DELDIR
if [ -e $DELDIR ]
        then
                echo 'Указанная директория найдена'
                cd $DELDIR
                echo 'Удаляю файлы...'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление файлов успешно завершено.'
        else
                echo 'Директория не найдена!'
                exit 2
fi
