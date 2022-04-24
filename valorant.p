DEFINE TEMP-TABLE valorant
FIELD soporte AS CHARACTER 
FIELD asesino AS CHARACTER 
FIELD armamento AS INTEGER.

CREATE valorant.


FOR EACH valorant NO-LOCK:
    MESSAGE "Ingrese un soporte".
    UPDATE valorant.soporte.
    
    MESSAGE "Ingrese un asesino".
    UPDATE valorant.asesino.
    
    MESSAGE "Ingrese cantidad de armamento".
    UPDATE valorant.armamento.

END.
RETURN.
