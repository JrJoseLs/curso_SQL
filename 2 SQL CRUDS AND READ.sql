use Holamundio;
CREATE TABLE user (
id int not null auto_increment,
name varchar (50) not null,
edad int not null, 
email varchar (100) not null,
primary key (id)
);

INSERT INTO user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla', 15, 'Layla@gmail.com');
INSERT INTO user (name, edad, email) values ('Nicaolas', 39, 'nico@gmail.com');
INSERT INTO user (name, edad, email) values ('Chanchito', 7, 'chan@gmail.com');

select * from user;
select * from user limit 1;
Select * from user where edad > 15;
Select * from user where edad > 20 and email = 'nico@gmail.com';
Select * from user where email != 'layla@gmail.com';
select * from user where edad between 15 and 30;
select * from user where email like '%gmail%';
select * from user where email like '%gmail';
select * from user where email like 'oscar%';

Select * from user order by edad asc;
Select * from user order by edad desc;
select max(edad) as mayor from user;
select min(edad) as menor from user;

-- solo seleccionar columnas de interes
select id, name from user;

-- cambiar nombre a columna
select id, name as nombre from user;
select id, name as puerco from user;



