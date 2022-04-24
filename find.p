//BUSCANDO, CON WHERE HACEMOS LA CONDICION DE BUSCAR(FIND) aquella ciudad llamada "oslo"
FIND customer WHERE customer.city = "oslo".
DISPLAY customer.city.

//NOS TRAJO LA PRIMER POSICION DE LA TABLA DE customer
FIND FIRST customer.
DISPLAY customer.city
/* en esta caso nos trajo Burlignton */

//HACEMOS QUE TRAIGA A PARTIR DE LA PRIMERA LA SIGUIENTE TABLA
FIND FIRST customer.
FIND NEXT customer.
DISPLAY customer.city.
/* EN ESTA CASO NOS TRAJO Oslo*/

//NOS TRAE LA ULTIMA PARTE DE LA TABLA
FIND LAST customer.
DISPLAY customer.city.
/* Nos trajo Fairbancks*/