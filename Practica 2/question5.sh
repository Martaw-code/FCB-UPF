#!bin/bash

#Compararé el ripollès i osona faig servir el grep invers amb (grep -v) per
#indicar que no vull les files tals que la seva data d'inici sigui 2020-02 ja
#que només vull els 31 dies de març. Si no posem aquesta opció ens agafa files
#que tenen una data d'inci anterior a març(i per tant febrer) però final al març
grep No comarques_setmanal.csv | grep RIPOLLES | grep 2020-03- | grep -v 2020-02 > ripolles.csv
grep No comarques_setmanal.csv | grep OSONA | grep 2020-03- | grep -v 2020-02 > osona.csv

cut -d ';' -f 17 ripolles.csv| cat | sort -n -r > exitRipolles.csv
cut -d ';' -f 17 osona.csv | cat | sort -n -r > exitOsona.csv

paste exitRipolles.csv exitOsona.csv | cat > comparacio.csv

##Faig que l'script l'executi i la mostri per pantalla
cat comparacio.csv
##Aquesta és la resposta i la guardem al fitxer comparació

: '
6	56
5	53
5	52
5	52
4	51
4	49
4	48
3	39
3	37
2	35
1	33
1	30
1	23
1	17
1	16
0	14
0	12
0	8
0	6
0	6
0	4
0	1
0	1
0	1
0	1
0	0
0	0
0	0
0	0
0	0
0	0
'
