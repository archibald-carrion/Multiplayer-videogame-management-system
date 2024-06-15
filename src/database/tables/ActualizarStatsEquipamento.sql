USE C01736_EXAMEN_1;
GO

-- declarar ActualizarStatsEquipamento
CREATE PROCEDURE ActualizarStatsEquipamento
    @NombreUsuario VARCHAR(255)
AS
BEGIN
    DECLARE @TotalAtaque FLOAT = 0;
    DECLARE @TotalDefensa FLOAT = 0;

    -- sumar los valores de ataque y defensa de cada equipo equipado

    -- busca el equipo equipado en la tabla CUENTA_TIENE_EQUIPADO_CASCO y lo suma a los valores de ataque y defensa
    SELECT
        @TotalAtaque = ISNULL(@TotalAtaque, 0) + ISNULL(equipment.Ataque, 0),
        @TotalDefensa = ISNULL(@TotalDefensa, 0) + ISNULL(equipment.Defensa, 0)
    FROM
        CUENTA_TIENE_EQUIPADO_CASCO buffer1
        JOIN EQUIPO equipment ON buffer1.NombreEquipo = equipment.NombreEquipo
    WHERE
        buffer1.NombreUsuario = @NombreUsuario;

    -- busca el equipo equipado en la tabla CUENTA_TIENE_EQUIPADO_LENTES y lo suma a los valores de ataque y defensa
    SELECT
        @TotalAtaque = @TotalAtaque + ISNULL(equipment.Ataque, 0),
        @TotalDefensa = @TotalDefensa + ISNULL(equipment.Defensa, 0)
    FROM
        CUENTA_TIENE_EQUIPADO_LENTES buffer2
        JOIN EQUIPO equipment ON buffer2.NombreEquipo = equipment.NombreEquipo
    WHERE
        buffer2.NombreUsuario = @NombreUsuario;

    -- busca el equipo equipado en la tabla CUENTA_TIENE_EQUIPADO_MASCARA y lo suma a los valores de ataque y defensa
    SELECT
        @TotalAtaque = @TotalAtaque + ISNULL(equipment.Ataque, 0),
        @TotalDefensa = @TotalDefensa + ISNULL(equipment.Defensa, 0)
    FROM
        CUENTA_TIENE_EQUIPADO_MASCARA buffer3
        JOIN EQUIPO equipment ON buffer3.NombreEquipo = equipment.NombreEquipo
    WHERE
        buffer3.NombreUsuario = @NombreUsuario;

    -- busca el equipo equipado en la tabla CUENTA_TIENE_EQUIPADO_TORSO y lo suma a los valores de ataque y defensa
    SELECT
        @TotalAtaque = @TotalAtaque + ISNULL(equipment.Ataque, 0),
        @TotalDefensa = @TotalDefensa + ISNULL(equipment.Defensa, 0)
    FROM
        CUENTA_TIENE_EQUIPADO_TORSO buffer4
        JOIN EQUIPO equipment ON buffer4.NombreEquipo = equipment.NombreEquipo
    WHERE
        buffer4.NombreUsuario = @NombreUsuario;

    -- busca el equipo equipado en la tabla CUENTA_TIENE_EQUIPADO_ZAPATOS y lo suma a los valores de ataque y defensa
    SELECT
        @TotalAtaque = @TotalAtaque + ISNULL(equipment.Ataque, 0),
        @TotalDefensa = @TotalDefensa + ISNULL(equipment.Defensa, 0)
    FROM
        CUENTA_TIENE_EQUIPADO_ZAPATOS buffer5
        JOIN EQUIPO equipment ON buffer5.NombreEquipo = equipment.NombreEquipo
    WHERE
        buffer5.NombreUsuario = @NombreUsuario;

    -- busca el equipo equipado en la tabla CUENTA_TIENE_EQUIPADO_COLLAR y lo suma a los valores de ataque y defensa
    SELECT
        @TotalAtaque = @TotalAtaque + ISNULL(equipment.Ataque, 0),
        @TotalDefensa = @TotalDefensa + ISNULL(equipment.Defensa, 0)
    FROM
        CUENTA_TIENE_EQUIPADO_COLLAR buffer6
        JOIN EQUIPO equipment ON buffer6.NombreEquipo = equipment.NombreEquipo
    WHERE
        buffer6.NombreUsuario = @NombreUsuario;

    -- busca el equipo equipado en la tabla CUENTA_TIENE_EQUIPADO_MANOS y lo suma a los valores de ataque y defensa
    SELECT
        @TotalAtaque = @TotalAtaque + ISNULL(equipment.Ataque, 0),
        @TotalDefensa = @TotalDefensa + ISNULL(equipment.Defensa, 0)
    FROM
        CUENTA_TIENE_EQUIPADO_MANOS buffer7
        JOIN EQUIPO equipment ON buffer7.NombreEquipo = equipment.NombreEquipo
    WHERE
        buffer7.NombreUsuario = @NombreUsuario;

    -- asignar los valores de ataque y defensa a la cuenta
    UPDATE CUENTA
    SET Ataque = @TotalAtaque, Defensa = @TotalDefensa
    WHERE NombreUsuario = @NombreUsuario;
END;
GO

-- se llama a la función ActualizarStatsEquipamento con el nombre de usuario 'esteba'
EXEC ActualizarStatsEquipamento 'esteban';
GO
