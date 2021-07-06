#!/bin/bash
users_id=(71665538 66146765 132961968 15096445 172753273 54152646)
for users_id in ${users_id[*]}
do
    curl=$(curl -s "api.mercadolibre.com/users/71665538/shipping_preferences" | jq -c '.services')
    echo "$users_id: $curl"
done



Indica con que programa debe interpretar el script
Asigna datos a la variable user_id
Por cada usuario en users_id
Hacer
Toma los services de las preferncias de envio dentro de cada usuario y lo asigna a la variable curl 
Muestra por pantalla el resultado obtenido
Finaliza el bucle


Una linea por cada services.