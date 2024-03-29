use Holamundio;
CREATE table products (
id int not null auto_increment,
name varchar (50) not null,
Created_by int not null, 
marca varchar (50) not null,
primary key (id),
foreign key(Created_by) references user(id)
);
-- cambiar el nombre de la tabla
rename  table products to product;

-- nueva alternativa para insertar datos
INSERT INTO product (name, created_by, marca)
values
	('ipad',1,'apple'),
    ('iphone',1,'apple'),
    ('watch',2,'apple'),
    ('macbook',1,'apple'),
    ('imac',3,'apple'),
    ('ipad mini',2,'apple');
    
select * from product;

-- unir tablas (joined) (right, left, inner and cross)
select u.id, u.email, p.name from user u left join product p on u.id = p.Created_by;

select u.id, u.email, p.name from user u right join product p on u.id = p.Created_by;

select u.id, u.email, p.name from user u inner join product p on u.id = p.Created_by;

select u.id, u.name, p.id, p.name from user u cross join product p;

-- Intruccion group_by
select count(id), marca from product group by marca;
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.Created_by;

-- si quiero consulta en especifico (having)
select count(p.id), u.name from product p left join user u on u.id = 
p.created_by group by p.Created_by
having count(p.id) >= 2;


-- modelado de database, modelo entidad relacion
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)



