#!bin/bash
#RECORDA: fes servir el csv on has dit que Si que volies a la gent del geriatric
#Aixi: grep Si catalunya_setmanal.csv > catalunya_setmanal_general.csv

## Primera part:

grep Si comarques_setmanal.csv | cut -d ';' -f 1 | cat > comarques_setmanal_county.csv
grep Si comarques_setmanal.csv | cut -d ';' -f 17 | cat > comarques_setmanal_exitusDef.csv
paste comarques_setmanal_county.csv comarques_setmanal_exitusDef.csv | sort | uniq -c | sort -n -k 3 | tail -1
#Resposta:  1 BARCELONES	574

#Només falta concatenar la columan dels períodes
grep Si comarques_setmanal.csv | cut -f 1 -d ';' | cat > comarques_setmanal_county4.csv
grep Si comarques_setmanal.csv | cut -f 3 -d ';' | cat > comarques_setmanal_dataIni4.csv
grep Si comarques_setmanal.csv | cut -f 4 -d ';' | cat > comarques_setmanal_dataFi4.csv
grep Si comarques_setmanal.csv | cut -f 17 -d ';' | cat > comarques_setmanal_exitusDef4.csv
#En comptes del 574 el pots substituir pel valor anterior que t'hagi donat
paste comarques_setmanal_county4.csv comarques_setmanal_dataIni4.csv comarques_setmanal_dataFi4.csv comarques_setmanal_exitusDef4.csv | cat | grep 574
#Resposta: BARCELONES	2020-04-06	2020-04-12	574 
