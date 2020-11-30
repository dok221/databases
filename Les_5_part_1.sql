use moon;

INSERT INTO users (name, birthday_at) VALUES
  ('Max', '1990-10-05'),
  ('Andry', '1984-11-12'),
  ('Alex', '1985-05-20'),
  ('Serg', '1988-02-14'),
  ('Ivan', '1998-01-12'),
  ('Mary', '1992-08-29');
  

truncate table users;

insert into users values (null, 'Max', '1990-10-05', NOW(), NOW()); 
INSERT INTO users (created_at, updated_at) values (NOW(), NOW());

UPDATE users SET created_at = null;
UPDATE users SET updated_at = null;

truncate table users;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at varchar(10),
  updated_at varchar(10)
); 

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at varchar(10),
  updated_at varchar(10)
); 

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  birthday_at DATE,
  created_at varchar(255),
  updated_at varchar(255)
);

INSERT INTO users (name, birthday_at, created_at) VALUES
  ('Max', '1990-10-05', '27.11.2020 14.08'),
  ('Andry', '1984-11-12', '27.11.2020 14.08'),
  ('Alex', '1985-05-20', '27.11.2020 14.08'),
  ('Serg', '1988-02-14', '27.11.2020 14.08'),
  ('Ivan', '1998-01-12', '27.11.2020 14.08'),
  ('Mary', '1992-08-29', '27.11.2020 14.08');
 
 ALTER TABLE users UPDATE created_at DATETIME;
update users
	set create_at varchar datetime;



SELECT STR_TO_DATE('27.11.2020 14.08',GET_FORMAT(DATE,'USA')); --преобразовать данные из строкового формата в формат дат с помощью функции STR_TO_DATE()
        -> 27.11.2020 14.08
 
  ALTER TABLE users CHANGE created_at DATETIME; --
 DATE_FORMAT(STR_TO_DATE('27.11.2020 14.08', '%d.%m.%Y %T'), '%d.%m.%Y %T');
 select STR_TO_DATE('27.11.2020 14.08', '%d.%m.%Y %T');
ALTER TABLE users CHANGE created_at created_at DATETIME;




select str_to_date(created_at, '%d.%m.%Y %T') 
from users;
update users set created_at = str_to_date(created_at, '%d.%m.%Y %T');




