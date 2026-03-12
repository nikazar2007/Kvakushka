#!/bin/bash
check_root() {
	if [ $EUID -ne 0 ]; then 
		echo "Ошибка: Скрипт требудет root права"
		exit 1
	fi
}

check_root
echo "Всё хорошо, вы root."
