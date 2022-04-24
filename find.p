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

//SI PONEMOS NO-ERROR LE DECIMOS QUE SIGA CON EL CODIGO, AL PONER ESTE ESTAMOS OMITIENDO EL ERROR QUE SUCEDE
FIND FIRST customer WHERE customer.city="quilmes" NO-ERROR.
DISPLAY customer.city
/* ES ESTE CASO NOS MUESTRA LA CONSOLA, PERO NOS DICE QUE LA CONSOLA NO TIENE NADA QUE MOSTRAR*/

/**************************************************************************************************************/
//PONEMOS UNA CONDICION EN LA CUAL NOS MUESTRE UN FRAME EN CASO DE ALGUNO ERROR

FIND FIRST customer WHERE customer.city="quilmes" NO-ERROR. //LE DECIMOS QUE SIGA AUNQUE HALLA ERROR
IF AVAIL customer THEN //EN CASO DE QUE HALLA ALGO(AVAIL) EN LA TABLA NOS VA A MOSTRAR
DO:
DISPLAY customer.city.    
END.

ELSE DO: //EN CASO DE QUE NO, NOS VA A MOSTRAR UN FRAME DE INFORMACION 
    MESSAGE "NO EXISTE ESA CIUDAD" VIEW-AS ALERT-BOX INFORMATION BUTTON OK.
END.
/* EN ESTE CASO NOS MUESTRA UNA VENTANA DE INFORMACION DE QUE NO EXISTE LA CIUDAD*/

//este es lo mismo solo que ponemos IF NOT AVAIL que quiere decir si no esta disponible
FIND FIRST customer WHERE customer.city = 'oslos' NO-LOCK NO-ERROR.//NOSOTROS PODEMOS MODIFICAR LOS DATOS A TRAVES DE LOS COMANDO, PERO CON NO-LOCK LO QUE HACEMOS ES SACARNOS ESA PELIGROSIDAD!!! OSEA QUE NO PODEMOS TENER ESE ACCESO DE CAMBIAR LA INFORMACION DE LA BASE DE DATOS
IF NOT AVAIL customer THEN
DO:
    MESSAGE 'No existe esa ciudad' VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    RETURN.//con este decimos que no siga para abajo
END.

DISPLAY customer.city.
/**************************************************************************************************************/

