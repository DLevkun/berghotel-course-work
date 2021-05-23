--
-- Script was generated by Devart dbForge Studio 2020 for MySQL, Version 9.0.435.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 23.05.2021 12:37:08
-- Server version: 10.4.14
-- Client version: 4.1
--


SET NAMES utf8;


CREATE TABLE failed_jobs (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  connection TEXT NOT NULL,
  queue TEXT NOT NULL,
  payload LONGTEXT NOT NULL,
  exception LONGTEXT NOT NULL,
  failed_at TIMESTAMP NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (id)
)


CREATE TABLE migrations (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  migration VARCHAR(255) NOT NULL,
  batch INT(11) NOT NULL,
  PRIMARY KEY (id)
)


CREATE TABLE password_resets (
  email VARCHAR(255) NOT NULL,
  token VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL
)

  
CREATE TABLE rooms (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  guests INT(11) NOT NULL,
  area DOUBLE(6, 2) NOT NULL,
  price DOUBLE(6, 2) NOT NULL,
  image VARCHAR(255) NOT NULL,
  bed_size VARCHAR(255) NOT NULL,
  descrip TEXT NOT NULL,
  PRIMARY KEY (id)
)


CREATE TABLE suite_form_models (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  surname VARCHAR(255) NOT NULL,
  mail VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  date1 DATE NOT NULL,
  date2 DATE NOT NULL,
  sport TINYINT(1) NOT NULL,
  food TINYINT(1) NOT NULL,
  spa TINYINT(1) NOT NULL,
  pool TINYINT(1) NOT NULL,
  PRIMARY KEY (id)
)


CREATE TABLE tours (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  descrip TEXT NOT NULL,
  price DOUBLE(6, 2) NOT NULL,
  duration INT(11) NOT NULL,
  spec_duration INT(11) NOT NULL,
  date VARCHAR(255) NOT NULL,
  image VARCHAR(255) NOT NULL,
  descrip2 TEXT NOT NULL,
  PRIMARY KEY (id)
)


CREATE TABLE tour_form_models (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  surname VARCHAR(255) NOT NULL,
  mail VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  days INT(11) NOT NULL,
  date DATE NOT NULL,
  child TINYINT(1) NOT NULL,
  tour_id BIGINT(20) DEFAULT NULL,
  PRIMARY KEY (id)
)


CREATE TABLE users (
  id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  email_verified_at TIMESTAMP NULL DEFAULT NULL,
  password VARCHAR(255) NOT NULL,
  remember_token VARCHAR(100) DEFAULT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (id)
)

INSERT INTO migrations(id, migration, batch) VALUES
(1, 2014_10_12_000000_create_users_table, 1),
(2, 2014_10_12_100000_create_password_resets_table, 1),
(3, 2019_08_19_000000_create_failed_jobs_table, 1),
(4, 2021_05_19_121543_create_tours_table, 1),
(5, 2021_05_19_121547_create_rooms_table, 1),
(6, 2021_05_19_121556_create_tour_form_models_table, 2),
(7, 2021_05_19_121615_create_suite_form_models_table, 2);



INSERT INTO rooms(id, title, guests, area, price, image, bed_size, descrip) VALUES
(1, 'Чотирьохмісний номер Duplex Suite' , 4, 155, 200, 'DuplexSuite4', '200x200', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(2, 'Двомісний номер Junior suite', 2, 75, 85, 'JuniorSuite2', '200x150', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(3, 'Двомісний номер Senior suite', 2, 85, 100, 'SeniorSuite2', '190x110', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(4, 'Трьохмісний номер Family Room' , 3, 130, 120, 'FamilyRoom3', '200x200', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(5, 'Одномісний номер Studio' , 1, 50, 75, 'Studio1', '200x100', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(6, 'Двомісний номер Superior BDRM', 2, 65, 80, 'Superior2', '200x200', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(7, 'Двомісний номер Suite mini' , 2, 50, 75, 'SuiteMini2', '190x150', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(8, 'Чотирьохмісний номер Apartment', 4, 200, 150, 'Apartment', '200x150', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.'),
(9, 'Двомісний номер Business Superior', 2, 100, 100, 'BusinessSuperior2', '200x200', 'Двоповерховий номер з балконом, вітальнею і спальнею, з меблями та обладнанням високої якості.');



INSERT INTO tours(id, title, descrip, price, duration, spec_duration, date, image, descrip2) VALUES
(1, Екскурсія до озера Давозер, Влітку пейзажі озера Давозер чарівні в кращих швейцарських традиціях. Невелике дзеркало води оточене пасторальними картинками зелених схилів гір, хаотично розкиданими по ним будиночками і білої спіраллю ґрунтових доріг. До одного з берегів впритул підходить ліс. Ідеальне місце для відпочинку душею та єднанню з природою., 500, 1, 3, 24-25 квітня, tour1, Найпопулярній тур, що пропонується нашим готелем. Ви матимете змогу побачити життя деяких містечок, а завершиться поїздка відвідуванням найбільш живописної вершини могутніх Альп.),
(2, Морозне золоте кільце, Хохванг - це гора в Плессурських Альпах, розташована між долинами Шанфігг і Преттігау в кантоні Граубюнден. Висотою 2534 метра над рівнем моря, це найвища вершина ланцюга, що лежить на захід від Дураннапасса. До його вершині веде кілька троп., 1075, 2, 4, 4 -6 березня, tour2, Найпопулярній тур, що пропонується нашим готелем. Ви матимете змогу побачити життя деяких містечок, а завершиться поїздка відвідуванням найбільш живописної вершини могутніх Альп.),
(3, Екскурсія до озера Лаго Б’янко, Лаго Бянко (буквально "Біле озеро") розташовується в швейцарському кантоні Граубюнден між регіонами Поскьяво (Пушлав) і Берніна. Воно розташувалося на самому верху перевалу Гавія, на висоті близько 2620 м. над рівнем моря. Неземний колір води та магічна сила природи вразить вас з першої секунди. Розповідати немає сенсу, це потрібно побачити., 650, 2, 3, 15-16 квітня, tour3, Найпопулярній тур, що пропонується нашим готелем. Ви матимете змогу побачити життя деяких містечок, а завершиться поїздка відвідуванням найбільш живописної вершини могутніх Альп.);


INSERT INTO tour_form_models(id, name, surname, mail, phone, days, date, child, tour_id) VALUES
(1, Даря, Левкун, levkun.dasha@gmail.com, +380509011905, 1, 2021-05-23, 1, 1);