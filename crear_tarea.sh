#!/usr/bin/env bash
set -euo pipefail

PATH_TAREAS="./tareas/"

TOTAL_TAREAS=$(ls $PATH_TAREAS | wc -l)

TAREA_NUEVA=$(echo "$TOTAL_TAREAS + 1" | bc)

DIR_TAREA_NUEVA=$PATH_TAREAS$TAREA_NUEVA

mkdir $DIR_TAREA_NUEVA

cp ./template/makefile ./template/main_config.tex $DIR_TAREA_NUEVA

touch "$DIR_TAREA_NUEVA/main.org"

printf "#+TITLE: Tarea 2\n#+LANGUAGE: es\n#+OPTIONS: title:nil toc:nil\n#+LATEX: \input{./portada.tex}\n\n* Primera Seccion\nLorem.." >> $DIR_TAREA_NUEVA/main.org
