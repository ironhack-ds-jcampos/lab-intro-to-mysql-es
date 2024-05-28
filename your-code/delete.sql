/*DELETE FROM cars WHERE id = 4;*/

/* Como he copiado el schema tal cual no tengo campo ID así que borro la priemra fila coincidente. Espero que sirva */
DELETE FROM cars WHERE vin = 'DAM41UDN3CHU2WVF6' LIMIT 1;