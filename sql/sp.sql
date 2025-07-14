CREATE OR REPLACE PROCEDURE INSERTARSERVICIOTRANSPORTE (
    IDV NUMBER,
    IDEC NUMBER,
    FEINICIO DATE, -- Cambié de VARCHAR a DATE
    FEENTREGA DATE, -- Cambié de VARCHAR a DATE
    PESO NUMBER,
    PORIGEN VARCHAR,
    PDESTINO VARCHAR,
    IDCONDUCTOR NUMBER
) IS
    VMAXST NUMBER;
BEGIN
    -- Usamos NVL para garantizar que si MAX es NULL, se asigna 1
    SELECT NVL(MAX(ST.IDSERVICIOTRANSPORTE), 0) + 1
    INTO VMAXST
    FROM SERVICIOTRANSPORTE ST;

    -- Insertamos en SERVICIOTRANSPORTE especificando las columnas
    INSERT INTO SERVICIOTRANSPORTE (
        IDSERVICIOTRANSPORTE,
        IDVEHICULO,
        IDEMPRESACLIENTE,
        FECHAINICIO,
        FECHAENTREGA,
        PESO,
        ORIGEN,
        DESTINO
    ) VALUES (
        VMAXST,
        IDV,
        IDEC,
        FEINICIO,
        FEENTREGA,
        PESO,
        PORIGEN,
        PDESTINO
    );
    
    INSERT INTO SERVICIO_CONDUCTOR_ (
        IDSERVICIOTRANSPORTE,
        IDCONDUCTOR,
        OBSERVACION
    ) VALUES (
        VMAXST,
        IDCONDUCTOR,
        'OK'
    );

    -- Hacemos COMMIT para confirmar los cambios
    COMMIT;

END;



CREATE OR REPLACE PROCEDURE ActualizarPesoServicio (
    p_idservicio IN NUMBER,
    p_nuevopeso IN NUMBER
) IS
BEGIN
    UPDATE SERVICIOTRANSPORTE
    SET PESO = p_nuevopeso
    WHERE IDSERVICIOTRANSPORTE = p_idservicio;
    COMMIT;
END;
/

-- Eliminar servicio (asegurándote de borrar también en Servicio_Conductor_)
CREATE OR REPLACE PROCEDURE EliminarServicioTransporte (
    p_idservicio IN NUMBER
) IS
BEGIN
    DELETE FROM SERVICIO_CONDUCTOR_
    WHERE IDSERVICIOTRANSPORTE = p_idservicio;

    DELETE FROM SERVICIOTRANSPORTE
    WHERE IDSERVICIOTRANSPORTE = p_idservicio;

    COMMIT;
END;
/

create or replace NONEDITIONABLE FUNCTION TiempoEstimado(p_idservicio NUMBER)
RETURN NUMBER
IS
    v_dias NUMBER;
BEGIN
    SELECT FECHAENTREGA - FECHAINICIO
    INTO v_dias
    FROM SERVICIOTRANSPORTE
    WHERE IDSERVICIOTRANSPORTE = p_idservicio;

    RETURN v_dias;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;

