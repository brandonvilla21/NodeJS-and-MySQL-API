create database if not exists `angular2-nodejs-course`;
use `angular2-nodejs-course`;

create table products
(
	id int not null auto_increment
		primary key,
	name varchar(100) not null,
	picture varchar(100) default 'default.png' not null,
	price decimal(10,2) not null,
	description text null,
	constraint products_name_uindex
		unique (name)
)
;

INSERT INTO products (name, picture, price, description) VALUES ('iphone4', 'iphone4.png', 100.00, 'El iPhone 4 pesa 137 g y tiene un grosor de 9.30 mm, mientras que mide 115.20 mm de alto y 58.60 mm de ancho.');
INSERT INTO products (name, picture, price, description) VALUES ('iphone5', 'iphone5.png', 200.00, 'El iPhone 5 lleva equipado la primera pantalla Retina con tecnología táctil incorporada. Con ello se consigue más píxeles, una mejor calidad del color y una pantalla de 4 pulgadas más delgada con una resolución de 1136 x 640 píxeles.');
INSERT INTO products (name, picture, price, description) VALUES ('iphone6', 'iphone6.png', 400.00, 'El iPhone 6 tiene un tamaño de pantalla de 4.7 pulgadas, con una resolución de 1334 x 750. La pantalla es de tipo IPS. Tiene una densidad de píxeles de 326 ppp. Además, con la protección Recubrimiento oleofóbico te aseguras resistencia frente a arañazos y golpes.');
INSERT INTO products (name, picture, price, description) VALUES ('iphone7', 'iphone7.png', 800.00, 'El iPhone 7 Plus cuenta con una doble cámara. Una de las lentes es gran angular con una apertura de ƒ/1.8 y la otra teleobjetivo con una apertura de ƒ/2.8, lo que le permite al iPhone tomar fotografías con un zoom óptico de 2x y zoom digital hasta de 10x y fotos con profundidad de campo. Ambas cámaras cuentan con 12 megapíxeles y grabación 4K.');
INSERT INTO products (name, picture, price, description) VALUES ('iMac21.5', 'imac21.png', 1400.00, 'Pantalla de 21,5 pulgadas (en diagonal) retroiluminada por LED con tecnología IPS; resolución de 1.920 por 1.080 compatible con millones de colores');
INSERT INTO products (name, picture, price, description) VALUES ('imac27', 'imac27.png', 3500.00, 'Pantalla Retina 5K de 27 pulgadas (en diagonal) con tecnología IPS; resolución de 5.120 por 2.880 compatible con millones de colores');
INSERT INTO products (name, picture, price, description) VALUES ('iPad Air', 'ipad.png', 500.00, 'La pantalla del Apple iPad Air tiene un tamaño de 9.7 pulgadas y cuenta con una resolución de 2048 X 1536. Hablamos de una pantalla IPS. Está protegida de arañazos y golpes mediante una capa recubrimiento oleofóbico. La densidad de píxeles, que se mide en puntos por pulgada, es de 264 ppp.');
INSERT INTO products (name, picture, price, description) VALUES ('MacBook Pro', 'macbook-pro.png', 2000.00, 'Pantalla retroiluminada por LED de 13,3 pulgadas (en diagonal) con tecnología IPS; resolución nativa de 2.560 por 1.600 a 227 píxeles por pulgada compatible con millones de colores');
INSERT INTO products (name, picture, price, description) VALUES ('MacBook Air', 'macbook-air.png', 1400.00, 'Intel Core i5 de doble núcleo a 1,6 GHz (Turbo Boost de hasta 2,7 GHz) con 3 MB de caché de nivel 3 compartida Opción de configuración con Intel Core i7 de doble núcleo a 2,2 GHz (Turbo Boost de hasta 3,2 GHz) y 4 MB de caché de nivel 3 compartida');
