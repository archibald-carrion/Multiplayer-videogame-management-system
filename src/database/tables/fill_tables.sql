
INSERT INTO PERSONA (Correo, Nombre) VALUES 
('joseph@example.com', 'joseph gomez'),
('esteban@example.com', 'Esteban Soto');

INSERT INTO CUENTA (NombreUsuario, Correo, Contrasena, Ataque, Defensa) VALUES 
('joseph', 'joseph@example.com', 'password1', 20.0, 0.0),
('esteban', 'esteban@example.com', 'password2', 10.0, 45.0);

INSERT INTO CONSOLA (NOMBRE, Compania, AnnoSalida) VALUES 
('PlayStation', 'Sony', '2000-01-01'),
('Xbox', 'Microsoft', '2111-11-11');

INSERT INTO LOGROS (idLogro, NombreConsola, NombreLogro, Descricion) VALUES 
(NEWID(), 'PlayStation', 'LOGRO0', 'Ganar 100 partidas'),
(NEWID(), 'Xbox', 'LOGRO1', 'Perder 100 partidas');

INSERT INTO EQUIPO (NombreEquipo, Lugar, Color, Ataque, Defensa, Descricion) VALUES 
('casco vikingo', 'Casco', 'verde', 10.0, 5.0, 'A helmet for protection'),
('lentes para leer', 'lentes', 'rojo', 0.0, 3.0, 'A pair of glasses for vision'),
('mascara magica', 'mascara', 'azul', 5.0, 8.0, 'A mask for protection'),
('torso chainmail', 'torso', 'plateado', 15.0, 10.0, 'A chainmail torso for protection'),
('botas de levitacion', 'zapatos', 'negro', 8.0, 3.0, 'A pair of boots for levitation'),
('collar de fuerza', 'collar', 'dorado', 0.0, 15.0, 'A necklace for strength'),
('guantes de fuerza', 'manos', 'dorado', 5.0, 5.0, 'A pair of gloves for strength'),
('Espada', 'manos', 'azul', 10.0, 0.0, 'Espada de metal'),
('Escudo', 'manos', 'azul', 0.0, 10.0, 'escuado de madera'),
('oro', 'manos', 'oro', 0.0, 0.0, 'in-game currency'),
('casco rojo de power ranger', 'casco', 'rojo', 0.0, 15.0, 'casco magico');

INSERT INTO RECETAS (NombreReceta) VALUES 
('RecetaEspada'),
('RecetaEscudo');

INSERT INTO COMERCIO (NombreComercio) VALUES 
('IntercambioEspada'),
('IntercambioCasco');

INSERT INTO MATERIALES (NombreMaterial, Descricion) VALUES 
('Hierro', 'Metal used for crafting'),
('Madera', 'Material used for building'),
('Cuerro', 'Material used for crafting');

INSERT INTO AREA (NombreArea) VALUES 
('Bosque'),
('Desierto');

INSERT INTO MAPA (NombreArea) VALUES 
('Bosque'),
('Desierto');

INSERT INTO EDIFICIO (NombreEdificio, NombreArea, Descricion, Interactuable) VALUES 
('Casa', 'Bosque', 'A small wooden house', 1),
('Castillo', 'Desierto', 'A large stone castle', 0);

INSERT INTO PERSONA_JUEGA_EN (Correo, Consola) VALUES 
('joseph@example.com', 'PlayStation'),
('esteban@example.com', 'Xbox');

INSERT INTO RECETA_PERMITE_FABRICAR (NombreReceta, NombreEquipo) VALUES 
('RecetaEspada', 'Espada'),
('RecetaEscudo', 'Escudo');

INSERT INTO RECETA_NECESITA_MATERIAL (NombreReceta, NombreMaterial, Cantidad) VALUES 
('RecetaEspada', 'Hierro', 10),
('RecetaEscudo', 'Madera', 5);

INSERT INTO COMERCIO_PERMITE_VENDER (NombreComercio, NombreEquipo) VALUES 
('IntercambioEspada', 'Espada'),
('IntercambioCasco', 'Escudo');

INSERT INTO COMERCIO_PERMITE_OBTENER (NombreComercio, NombreMaterial, Cantidad) VALUES 
('IntercambioEspada', 'Hierro', 2),
('IntercambioEspada', 'Cuerro', 5),
('IntercambioCasco', 'Madera', 5),
('IntercambioCasco', 'Cuerro', 2);

INSERT INTO CUENTA_PUEDE_ACCEDER_A (NombreUsuario, NombreArea) VALUES 
('joseph', 'Bosque'),
('esteban', 'Desierto');

INSERT INTO CUENTA_TIENE_EQUIPO (NombreUsuario, NombreEquipo, Cantidad) VALUES
('joseph', 'Espada', 1),
('esteban', 'Escudo', 2),
('joseph', 'oro', 1000),
('esteban', 'oro', 300),
('esteban', 'casco rojo de power ranger', 1),
('juanp', 'casco vikingo', 1),
('juanp', 'lentes para leer', 1),
('juanp', 'mascara magica', 1),
('juanp', 'torso chainmail', 1),
('juanp', 'botas de levitacion', 1),
('juanp', 'collar de fuerza', 1),
('juanp', 'guantes de fuerza', 1),
('esteban', 'torso chainmail', 1),
('esteban', 'botas de levitacion', 1),
('esteban', 'collar de fuerza', 1),
('esteban', 'guantes de fuerza', 1),
('esteban', 'lentes para leer', 1),
('esteban', 'mascara magica', 1),
('esteban', 'torso chainmail', 1),
('esteban', 'botas de levitacion', 1),
('esteban', 'collar de fuerza', 1),
('esteban', 'guantes de fuerza', 1);

INSERT INTO CUENTA_TIENE_LOGROS (NombreUsuario, idLogro) VALUES 
('joseph', (SELECT idLogro FROM LOGROS WHERE NombreLogro = 'LOGRO0')),
('esteban', (SELECT idLogro FROM LOGROS WHERE NombreLogro = 'LOGRO1'));

INSERT INTO CUENTA_TIENE_EQUIPADO_CASCO (NombreUsuario, NombreEquipo) VALUES 
('joseph', 'casco vikingo'),
('esteban', 'casco rojo de power ranger');

INSERT INTO CUENTA_TIENE_EQUIPADO_LENTES (NombreUsuario, NombreEquipo) VALUES 
('joseph', 'lentes para leer'),
('esteban', 'lentes para leer');

INSERT INTO CUENTA_TIENE_EQUIPADO_MASCARA (NombreUsuario, NombreEquipo) VALUES 
('joseph', 'mascara magica'),
('esteban', 'mascara magica');

INSERT INTO CUENTA_TIENE_EQUIPADO_TORSO (NombreUsuario, NombreEquipo) VALUES 
('joseph', 'torso chainmail'),
('esteban', 'torso chainmail');

INSERT INTO CUENTA_TIENE_EQUIPADO_ZAPATOS (NombreUsuario, NombreEquipo) VALUES 
('joseph', 'botas de levitacion'),
('esteban', 'botas de levitacion');

INSERT INTO CUENTA_TIENE_EQUIPADO_COLLAR (NombreUsuario, NombreEquipo) VALUES 
('joseph', 'collar de fuerza'),
('esteban', 'collar de fuerza');

INSERT INTO CUENTA_TIENE_EQUIPADO_MANOS (NombreUsuario, NombreEquipo) VALUES 
('joseph', 'guantes de fuerza'),
('esteban', 'guantes de fuerza');