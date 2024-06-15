DROP TRIGGER ValidarEquiparEquipo_Casco
DROP TRIGGER ValidarEquiparEquipo_Lentes
DROP TRIGGER ValidarEquiparEquipo_Mascara
DROP TRIGGER ValidarEquiparEquipo_Torso
DROP TRIGGER ValidarEquiparEquipo_Zapatos
DROP TRIGGER ValidarEquiparEquipo_Collar
DROP TRIGGER ValidarEquiparEquipo_Manos


-- crea los  triggers para validar si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO antes de equiparlo
CREATE TRIGGER ValidarEquiparEquipo_Casco
ON CUENTA_TIENE_EQUIPADO_CASCO
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    DECLARE @NombreUsuario VARCHAR(255);
    DECLARE @NombreEquipo VARCHAR(255);
    
    -- saca el NombreUsuario y NombreEquipo de la tabla inserted
    SELECT @NombreUsuario = i.NombreUsuario, @NombreEquipo = i.NombreEquipo
    FROM inserted i;

    -- verifica si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO
    IF NOT EXISTS (
        SELECT 1
        FROM CUENTA_TIENE_EQUIPO CE
        WHERE CE.NombreUsuario = @NombreUsuario
        AND CE.NombreEquipo = @NombreEquipo
    )
    BEGIN
        RAISERROR ('Cuenta is not allowed to equip this equipo', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;


CREATE TRIGGER ValidarEquiparEquipo_Lentes
ON CUENTA_TIENE_EQUIPADO_LENTES
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    DECLARE @NombreUsuario VARCHAR(255);
    DECLARE @NombreEquipo VARCHAR(255);
    
    -- saca el NombreUsuario y NombreEquipo de la tabla inserted
    SELECT @NombreUsuario = i.NombreUsuario, @NombreEquipo = i.NombreEquipo
    FROM inserted i;

    -- verifica si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO
    IF NOT EXISTS (
        SELECT 1
        FROM CUENTA_TIENE_EQUIPO CE
        WHERE CE.NombreUsuario = @NombreUsuario
        AND CE.NombreEquipo = @NombreEquipo
    )
    BEGIN
        RAISERROR ('Cuenta is not allowed to equip this equipo', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;


CREATE TRIGGER ValidarEquiparEquipo_Mascara
ON CUENTA_TIENE_EQUIPADO_MASCARA
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    DECLARE @NombreUsuario VARCHAR(255);
    DECLARE @NombreEquipo VARCHAR(255);
    
    -- saca el NombreUsuario y NombreEquipo de la tabla inserted
    SELECT @NombreUsuario = i.NombreUsuario, @NombreEquipo = i.NombreEquipo
    FROM inserted i;

    -- verifica si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO
    IF NOT EXISTS (
        SELECT 1
        FROM CUENTA_TIENE_EQUIPO CE
        WHERE CE.NombreUsuario = @NombreUsuario
        AND CE.NombreEquipo = @NombreEquipo
    )
    BEGIN
        RAISERROR ('Cuenta is not allowed to equip this equipo', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;


CREATE TRIGGER ValidarEquiparEquipo_Torso
ON CUENTA_TIENE_EQUIPADO_TORSO
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    DECLARE @NombreUsuario VARCHAR(255);
    DECLARE @NombreEquipo VARCHAR(255);
    
    -- saca el NombreUsuario y NombreEquipo de la tabla inserted
    SELECT @NombreUsuario = i.NombreUsuario, @NombreEquipo = i.NombreEquipo
    FROM inserted i;

    -- verifica si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO
    IF NOT EXISTS (
        SELECT 1
        FROM CUENTA_TIENE_EQUIPO CE
        WHERE CE.NombreUsuario = @NombreUsuario
        AND CE.NombreEquipo = @NombreEquipo
    )
    BEGIN
        RAISERROR ('Cuenta is not allowed to equip this equipo', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;


CREATE TRIGGER ValidarEquiparEquipo_Zapatos
ON CUENTA_TIENE_EQUIPADO_ZAPATOS
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    DECLARE @NombreUsuario VARCHAR(255);
    DECLARE @NombreEquipo VARCHAR(255);
    
    -- saca el NombreUsuario y NombreEquipo de la tabla inserted
    SELECT @NombreUsuario = i.NombreUsuario, @NombreEquipo = i.NombreEquipo
    FROM inserted i;

    -- verifica si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO
    IF NOT EXISTS (
        SELECT 1
        FROM CUENTA_TIENE_EQUIPO CE
        WHERE CE.NombreUsuario = @NombreUsuario
        AND CE.NombreEquipo = @NombreEquipo
    )
    BEGIN
        RAISERROR ('Cuenta is not allowed to equip this equipo', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;


CREATE TRIGGER ValidarEquiparEquipo_Collar
ON CUENTA_TIENE_EQUIPADO_COLLAR
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    DECLARE @NombreUsuario VARCHAR(255);
    DECLARE @NombreEquipo VARCHAR(255);
    
    -- saca el NombreUsuario y NombreEquipo de la tabla inserted
    SELECT @NombreUsuario = i.NombreUsuario, @NombreEquipo = i.NombreEquipo
    FROM inserted i;

    -- verifica si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO
    IF NOT EXISTS (
        SELECT 1
        FROM CUENTA_TIENE_EQUIPO CE
        WHERE CE.NombreUsuario = @NombreUsuario
        AND CE.NombreEquipo = @NombreEquipo
    )
    BEGIN
        RAISERROR ('Cuenta is not allowed to equip this equipo', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;


CREATE TRIGGER ValidarEquiparEquipo_Manos
ON CUENTA_TIENE_EQUIPADO_MANOS
INSTEAD OF INSERT, UPDATE
AS
BEGIN
    DECLARE @NombreUsuario VARCHAR(255);
    DECLARE @NombreEquipo VARCHAR(255);
    
    -- saca el NombreUsuario y NombreEquipo de la tabla inserted
    SELECT @NombreUsuario = i.NombreUsuario, @NombreEquipo = i.NombreEquipo
    FROM inserted i;

    -- verifica si el usuario tiene el equipo en CUENTA_TIENE_EQUIPO
    IF NOT EXISTS (
        SELECT 1
        FROM CUENTA_TIENE_EQUIPO CE
        WHERE CE.NombreUsuario = @NombreUsuario
        AND CE.NombreEquipo = @NombreEquipo
    )
    BEGIN
        RAISERROR ('Cuenta is not allowed to equip this equipo', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;