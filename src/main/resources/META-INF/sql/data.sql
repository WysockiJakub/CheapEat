insert into restaurant (name, email, info, phoneNumber, website, city, street, houseNumber, zipCode, localizationUrl) VALUES ("U Szwejka", "restauracja@uszwejka.pl", "info1", "+48 22 339 17 10", "http://www.uszwejka.pl", "Warszawa", "Plac Konstytucji", "1", "00-647", "https://www.openstreetmap.org/export/embed.html?bbox=21.01391673088074%2C52.22051905976723%2C21.018216311931614%2C52.22198804350747&amp;layer=mapnik&amp;marker=52.22125355771131%2C21.016066521406174");
insert into restaurant (name, email, info, phoneNumber, website, city, street, houseNumber, zipCode, localizationUrl) VALUES ("Secado", "kontakt@secado.com.pl", "info2", "+48 608 707 799", "http://www.secado.com.pl/", "Warszawa", "Marszalkowska", "66", "00-545", "https://www.openstreetmap.org/export/embed.html?bbox=21.013568043708805%2C52.22414377953833%2C21.016928851604465%2C52.22561264337765&amp;layer=mapnik&amp;marker=52.22487821753176%2C21.01524844765663");
insert into restaurant (name, email, info, phoneNumber, website, city, street, houseNumber, zipCode, localizationUrl) VALUES ("Restauracja Si", "kontakt@restauracjasi.pl", "info3", "+48 507 099 190", "http://restauracjasi.pl", "Warszawa", "Marszalkowska", "115", "00-102", "https://www.openstreetmap.org/export/embed.html?bbox=21.00169658660889%2C52.24066980244217%2C21.00505739450455%2C52.24213811954793&amp;layer=mapnik&amp;marker=52.24140396706791%2C21.003376990556717");
insert into restaurant (name, email, info, phoneNumber, website, city, street, houseNumber, zipCode, localizationUrl) VALUES ("Mniam", "example@mail.pl", "info4", "+48 123456789", "http://www.example.pl");
insert into restaurant (name, email, info, phoneNumber, website, city, street, houseNumber, zipCode, localizationUrl) VALUES ("BrowArmia", "biuro@browarmia.pl", "info5", "+48 606 475 675", "http://browarmia.pl", "Warszawa", "Krolewska", "1", "00-065", "https://www.openstreetmap.org/export/embed.html?bbox=21.01435393095017%2C52.239768093698615%2C21.01771473884583%2C52.241236440638964&amp;layer=mapnik&amp;marker=52.24050230002817%2C21.01603350000005");
insert into restaurant (name, email, info, phoneNumber, website, city, street, houseNumber, zipCode, localizationUrl) VALUES ("Jeff's Pole Mokotowskie", "pole_mokotowskie@jeffs.com", "info5", "+48 22 825 16 50", "http://jeffs.com/miejsca/pole-mokotowskie-warszawa", "Warszawa", "Zwirki i Wigury", "32", "02-092", "https://www.openstreetmap.org/export/embed.html?bbox=20.987456738948822%2C52.210239743672474%2C20.990817546844486%2C52.21170906740699&amp;layer=mapnik&amp;marker=52.21097385013508%2C20.98913755000001");

insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Sznycel jak w Wiedniu z cwiartka cytryny i salatka ziemniaczana lub frytkami", "desc", 17.00, 1, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Owoce morza", "Mule w garnku na cztery sposoby do wyboru", "w bialym winie, po tajsku, w pomidorach lub sosie serowym - 800-550 g", 44.00, 4, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Sur Sznycel 100% peklowanego miesa z cwiartka cytryny i l ziemniaczana lub frytkami", "desc", 19.00, 3, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Golonka z pieca", "100 g", 5.00, 6, 1);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Burger", "Burgery z naszego menu (poza burgerem 300)", "desc", 21.90, 3, 2);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Stek z rostbefu", "desc", 33.90, 5, 2);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Owoce morza", "Mule", "desc", 39.90, 4, 3);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Dwie porcje SKRZYDELEK BBQ", "desc", 25.00, 4, 5);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Schabowy", "desc", 15.00, 1, 5);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Teriyaki Pork Steak", "stek z karkówki w marynacie teriyaki", 20.00, 1, 6);
insert into promotion (category, name, description, price, dayOfWeek, restaurant_id) values ("Obiady domowe", "Chicken Bryan", "piers z kurczaka przykryta kozim serem i sosem", 26.00, 0, 6);

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