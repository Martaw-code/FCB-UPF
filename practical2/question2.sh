#!bin/bash

#La primera cosa que demana:
##forma que crec que et demanen
##Resposta: 4.97952
cut -f 7 -d ';' catalunya_setmanal.csv | sort | tail -2 | head -1
##jo ho faig sempre aixi
cut -f 7 -d ';' catalunya_setmanal.csv | sort -nr | head -1

##La segona cosa: 
cut -d ';' -f 3 catalunya_setmanal.csv > catalunya_setmanal_rang.csv
cut -d ';' -f 7 catalunya_setmanal.csv > catalunya_setmanal_r0.csv
##paste catalunya_setmanal_rang.csv catalunya_setmanal_r0.csv | more
##Juny 2020 (jo no tinc comes, sinó que faig servir punts), potser tu has
##d'afegir la opció -n quan fagis el sort

##Resposta: 2020-06-27	1.68719
paste catalunya_setmanal_rang.csv catalunya_setmanal_r0.csv | more | grep 2020-06- | sort -k 2 | tail -1
##Juny 2021
paste catalunya_setmanal_rang.csv catalunya_setmanal_r0.csv | more | grep 2021-06- | sort -k 2 | tail -1
##Resposta: 2021-06-27	3.47285

