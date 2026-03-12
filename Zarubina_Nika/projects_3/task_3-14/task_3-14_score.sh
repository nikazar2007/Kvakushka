#!/bin/bash

echo "Именя студентов с оценкой выше 80:"
awk '$2 > 80 {print $1}' students.txt
echo "Имена студентов с оценкой ниже 70:"
awk '$2 < 70 {print $1}' students.txt
echo "Первая строка файла:"
head -n1 students.txt
