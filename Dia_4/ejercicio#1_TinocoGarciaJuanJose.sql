-- ##################################
-- #########Ejercicio dia 4##########
-- ##################################

-- se crea la base de datos
CREATE database ejercicio_dia4;
use ejercicio_dia4;

-- se crea la tabla de pais
CREATE table pais(
	id_pais int primary key,
	nombre varchar(20),
	continente varchar(50),
	poblacion int
	);

-- se crea la tabla de ciudad
CREATE table ciudad(
	id_ciudad int primary key,
	nombre varchar(20),
	id_pais int,
	foreign key (id_pais) references pais(id_pais)
);

-- se crea la tabla de idioma
CREATE table idioma(
	id_idioma int primary key,
	nombre varchar(50)
);

-- se crea la tabla de idioma_ciudad
CREATE table idioma_ciudad(
	oficial tinyint(1),
	id_idioma int,
	foreign key (id_idioma) references idioma(id_idioma),
);

-- Inserciones en la tabla pais
INSERT INTO pais (id_pais, nombre, continente, poblacion) VALUES
(1, 'Estados Unidos', 'América del Norte', 331002651),
(2, 'Brasil', 'América del Sur', 212559417),
(3, 'China', 'Asia', 1439323776),
(4, 'India', 'Asia', 1380004385),
(5, 'Rusia', 'Europa/Asia', 145934462),
(6, 'Australia', 'Oceanía', 25499884),
(7, 'Canadá', 'América del Norte', 37742154),
(8, 'Argentina', 'América del Sur', 45195777),
(9, 'México', 'América del Norte', 128932753),
(10, 'Francia', 'Europa', 65273511);

-- Inserciones en la tabla ciudad
INSERT INTO ciudad (id_ciudad, nombre, id_pais) VALUES
(1, 'Nueva York', 1),
(2, 'São Paulo', 2),
(3, 'Pekín', 3),
(4, 'Bombay', 4),
(5, 'Moscú', 5),
(6, 'Sídney', 6),
(7, 'Toronto', 7),
(8, 'Buenos Aires', 8),
(9, 'Ciudad de México', 9),
(10, 'París', 10);

-- Inserciones en la tabla idioma
INSERT INTO idioma (id_idioma, nombre) VALUES
(1, 'Inglés'),
(2, 'Portugués'),
(3, 'Chino'),
(4, 'Hindi'),
(5, 'Ruso'),
(6, 'Español'),
(7, 'Francés'),
(8, 'Árabe'),
(9, 'Bengalí'),
(10, 'Alemán');

-- Inserciones en la tabla idioma_ciudad
INSERT INTO idioma_ciudad (oficial, id_idioma) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);





show tables

