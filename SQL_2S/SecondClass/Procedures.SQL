SET SERVEROUTPUT ON;
DECLARE
  valor NUMBER(2) := 4;
  tipo VARCHAR2(5);
BEGIN
    IF MOD(valor, 2) = 0 THEN
  tipo := 'PAR';
    ELSE
  tipo := 'IMPAR';
    END IF;
    DBMS_OUTPUT.PUT_LINE('O numero e: ' || tipo);
END;