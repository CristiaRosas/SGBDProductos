 -- drop database SGBDProductosIN5CV;

create database SGBDProductosIN5CV;
 
use SGBDProductosIN5CV;
 
create table Productos(
	productoId int not null auto_increment,
    nombreProducto varchar(40) not null,
    marcaProducto varchar(40),
    descripcionProducto text,
    precio decimal (10,2),
    primary key PK_productoId(productoId)
);
 
insert into Productos(nombreProducto, marcaProducto, descripcionProducto, precio, productoId) values
	('Seven Up' , 'coke' , 'Sabor limon' , 15.00, 1 ),
    ('Doritos' , 'Fritos' , 'Flaming hot' , 7.00, 2 ),
    ('Cerveza Gallo' , 'Castilla' , 'bebida alcoholica' , 11.00, 3 ),
    ('Shampoo' , 'Pantene' , 'Risos' , 15.00, 4 ),
    ('coca-cola' , 'coke' , 'Cero azucar' , 15.00, 5 );
    
   -- select*from Productos;