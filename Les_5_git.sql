
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '�������� �������',
  UNIQUE unique_name(name(10))
) COMMENT = '������� ��������-��������';

INSERT INTO catalogs VALUES
  (NULL, '����������'),
  (NULL, '����������� �����'),
  (NULL, '����������'),
  (NULL, '������� �����'),
  (NULL, '����������� ������');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
  ('Max', '1990-10-05'),
  ('Andry', '1984-11-12'), 
  ('Alex', '1985-05-20'),
  ('Serg', '1988-02-14'),--������� ������ ����� ������ ������ �� ����, �� ������� ����� (��������� ���� ��� ����)
  ('Ivan', '1998-01-12'),
  ('Mary', '1992-08-29');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��������',
  description TEXT COMMENT '��������',
  price DECIMAL (11,2) COMMENT '����',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = '�������� �������';

INSERT INTO products
  (name, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 7890.00, 1),
  ('Intel Core i5-7400', 12700.00, 1),
  ('AMD FX-8320E', 4780.00, 1),
  ('AMD FX-8320',  7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO',  19310.00, 2),
  ('Gigabyte H310M S2H',  4790.00, 2),
  ('MSI B250M GAMING PRO',  5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = '������';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT '���������� ���������� �������� �������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ ������';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT '�������� ������ �� 0.0 �� 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = '������';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '����� �������� ������� �� ������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ �� ������';

INSERT INTO storehouses_products
  (value)
VALUES
  (0),
  (10),
  (5),
  (14),
  (0),
  (50),
  (0);

 select * from storehouses_products  where value != 0 order by value; --������  �� �����������, �� ����� 0

(select * from storehouses_products where value != 0 order by value) -- ����� ��� ������, �� �rder by �� ����� ��������?
union
(select * from storehouses_products where value = 0); 
 
--����� 2 ��� 1

select 
	name,
	floor((to_days(now())-to_days(birthday_at)) / 365.25) as age from users; --������ ������� 
	
select
  name,
  TIMESTAMPDIFF(YEAR, birthday_at, NOW()) AS age
from
  users; -- ������ ������� 2� �������
  
  
select avg(age) as average_age from users; --����� ������� ��� �������� �������


	
	SELECT AVG(age)
  FROM (select TIMESTAMPDIFF(YEAR, birthday_at, NOW()) AS age 
 		from users GROUP by birthday_at) AS average_age_users; -----���������� � ��������� ��
  
 
  --����� 2 ��� 2
  
  select
count(*), 
date_format((DATE_ADD((concat(date_format(now() , '%Y'), '-', date_format(u.birthday_at, '%m'), '-', date_format(u.birthday_at, '%d'))), interval 0 day)), '%a') as 'day'
from users u
group by day; --���������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������



  