#!bin/bash
#faig l'aprofitada
cut -d ';' -f 3 catalunya_setmanal.csv > catalunya_setmanal_rang.csv
cut -d ';' -f 7 catalunya_setmanal.csv > catalunya_setmanal_r0.csv
#aprofito l'script d'abans per generar els dos csvs nous
paste catalunya_setmanal_rang.csv catalunya_setmanal_r0.csv | more | sort -k 2 | tail -2 | head -1 | cut -f 1
