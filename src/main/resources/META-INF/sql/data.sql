insert into restaurant (address, email, info, name, phoneNumber, website) VALUES ("Kopernika 23 ,Warszawa", "example@mail.pl", "info1", "Jadka", "+48 123456789", "http://www.example.pl");
insert into restaurant (address, email, info, name, phoneNumber, website) VALUES ("Mickiewicza 2 ,Warszawa", "example@mail.pl", "info2", "Szamka", "+48 123456789", "http://www.example.pl");
insert into restaurant (address, email, info, name, phoneNumber, website) VALUES ("Sienkiewicza 12 ,Warszawa", "example@mail.pl", "info3", "Amciu", "+48 123456789", "http://www.example.pl");
insert into restaurant (address, email, info, name, phoneNumber, website) VALUES ("Reymonta 56 ,Warszawa", "example@mail.pl", "info4", "Mniam", "+48 123456789", "http://www.example.pl");
insert into restaurant (address, email, info, name, phoneNumber, website) VALUES ("Prusa 87 ,Warszawa", "example@mail.pl", "info5", "Ulala", "+48 123456789", "http://www.example.pl");
insert into restaurant (address, email, info, name, phoneNumber, website) VALUES ("Kafki 1 ,Warszawa", "example@mail.pl", "info5", "Pycha", "+48 123456789", "http://www.example.pl");

insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Polska", "Sznycel jak w Wiedniu z cwiartka cytryny i salatka ziemniaczana lub frytkami", "desc", 17.00, 1, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Owoce morza", "Mule w garnku na cztery sposoby do wyboru", "w bialym winie, po tajsku, w pomidorach lub sosie serowym - 800-550 g", 44.00, 4, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Polska", "Sur Sznycel 100% peklowanego miesa z cwiartka cytryny i l ziemniaczana lub frytkami", "desc", 19.00, 3, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Polska", "Golonka z pieca", "100 g", 5.00, 6, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Burger", "Burgery z naszego menu (poza burgerem 300)", "desc", 21.90, 3, 2);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Polska", "Stek z rostbefu", "desc", 33.90, 5, 2);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Owoce morza", "Mule", "desc", 39.90, 4, 3);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Amerykanska", "Dwie porcje SKRZYDELEK BBQ", "desc", 25.00, 4, 5);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Polska", "Schabowy", "desc", 15.00, 1, 5);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Amerykanska", "Teriyaki Pork Steak", "stek z karkówki w marynacie teriyaki", 20.00, 1, 6);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Amerykanska", "Chicken Bryan", "piers z kurczaka przykryta kozim serem i sosem", 26.00, 0, 6);

insert into userDetails (address, dateOfBirth, email) values ("Warszawa","01-02-2000", "test@test.pl");
insert into userDetails (address, dateOfBirth, email) values ("Warszawa","01-02-2000", "test@test.pl");
insert into userDetails (address, dateOfBirth, email) values ("Warszawa","01-02-2000", "test@test.pl");

insert into users (password, username, userDetails_id) values ("$2a$10$xF1rNrQSliDv64JuR9xsueR8Lv503g03vm7uDjQBQFxcNbZCBDqIO", "kubakuba", 1);
insert into users (password, username, restaurant_id, userDetails_id) values ("$2a$10$xF1rNrQSliDv64JuR9xsueR8Lv503g03vm7uDjQBQFxcNbZCBDqIO", "restaurant", 1, 2);
insert into users (password, username, userDetails_id) values ("$2a$10$xF1rNrQSliDv64JuR9xsueR8Lv503g03vm7uDjQBQFxcNbZCBDqIO", "admin", 3);

insert into role (name) value ("ROLE_ADMIN");
insert into role (name) value ("ROLE_USER");
insert into role (name) value ("ROLE_RESTAURATEUR");

insert into users_role (users_id, roles_id) values (1,2);
insert into users_role (users_id, roles_id) values (2,3);
insert into users_role (users_id, roles_id) values (3,1);