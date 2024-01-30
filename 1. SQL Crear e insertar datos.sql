create database Holamundio;
show databases;

use Holamundio;
create table animales (
id int,
Tipo varchar (255),
estado varchar (255),
PRIMARY KEY (id)
);

-- INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('Serpentino', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('Lagarto', 'Triste');

SELECT * FROM animales;
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = 'feliz';
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'chanchito';

UPDATE animales SET estado = 'Triste' WHERE id = 3;

DELETE FROM animales WHERE id = 2;

UPDATE animales SET estado = 'Triste' WHERE tipo = 'dragon';
-- esta da error necesita el id al igual que en DELETE



