-- Insertar datos en TAB_CIUDADES
INSERT INTO TAB_CIUDADES (NOMBRECIUDAD, PAIS) VALUES
('Buenos Aires', 'Argentina'),
('Río de Janeiro', 'Brasil'),
('Lima', 'Perú');

-- Insertar datos en TAB_DEPORTES
INSERT INTO TAB_DEPORTES (NOMBREDEPORTE) VALUES
('Fútbol'),
('Atletismo'),
('Natación');

-- Insertar datos en TAB_NACIONALIDADES
INSERT INTO TAB_NACIONALIDADES (NOMBRENACIONALIDAD) VALUES
('Argentina'),
('Brasil'),
('Perú');

-- Insertar datos en TAB_DEPORTISTAS
INSERT INTO TAB_DEPORTISTAS (IDNACIONALIDAD, NOMBREDEPORTISTA, FECHANACIMIENTO, TELEFONO) VALUES
(1, 'Lionel Messi', '1987-06-24', '123456789'),
(2, 'Neymar Jr.', '1992-02-05', '987654321'),
(3, 'Paola Espinosa', '1986-07-31', '555666777');

-- Insertar datos en TAB_SEDESOLIMPICAS
INSERT INTO TAB_SEDESOLIMPICAS (IDCIUDAD, NOMBRESEDE, ANIOCELEBRACION) VALUES
(1, 'Estadio Olímpico', 2024),
(2, 'Maracanã', 2028),
(3, 'Estadio Nacional', 2032);

-- Insertar datos en TAB_EVENTOS
INSERT INTO TAB_EVENTOS (IDDEPORTE, IDSEDE, NOMBREEVENTO, FECHAEVENTO) VALUES
(1, 1, 'Final de Fútbol', '2024-08-10'),
(2, 2, 'Carrera de 100m', '2028-07-15'),
(3, 3, 'Natación 200m Libres', '2032-09-05');

-- Insertar datos en TAB_RESULTADOS
INSERT INTO TAB_RESULTADOS (IDEVENTO, IDDEPORTISTA, POSICION, MARCATIEMPO, RONDA) VALUES
(1, 1, 1, '00:90:00', 'Final'),
(2, 2, 1, '00:09:81', 'Final'),
(3, 3, 1, '02:05:23', 'Final');

-- Insertar datos en TAB_USUARIOS
INSERT INTO TAB_USUARIOS (NOMBREUSUARIO, USUARIO, CLAVE, ROL) VALUES
('Admin1', 'admin1', 'adminpass', 'Admin'),
('Usuario1', 'user1', 'userpass', 'Usuario'),
('Usuario2', 'user2', 'userpass', 'Usuario');
