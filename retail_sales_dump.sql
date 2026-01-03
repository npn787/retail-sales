BEGIN TRANSACTION;
CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
  full_name   TEXT NOT NULL,
  city        TEXT NOT NULL,
  signup_date DATE NOT NULL
);
INSERT INTO "customers" VALUES(1,'Ava Singh','Regina','2025-01-10');
INSERT INTO "customers" VALUES(2,'Noah Johnson','Saskatoon','2025-02-18');
INSERT INTO "customers" VALUES(3,'Mia Patel','Moose Jaw','2025-03-05');
INSERT INTO "customers" VALUES(4,'Liam Brown','Regina','2025-04-22');
INSERT INTO "customers" VALUES(5,'Sophia Chen','Yorkton','2025-05-11');
INSERT INTO "customers" VALUES(6,'Ethan Wilson','Saskatoon','2025-06-01');
INSERT INTO "customers" VALUES(7,'Olivia Martin','Regina','2025-06-15');
INSERT INTO "customers" VALUES(8,'Arjun Verma','Prince Albert','2025-07-02');
INSERT INTO "customers" VALUES(9,'Ava Singh','Regina','2025-01-10');
INSERT INTO "customers" VALUES(10,'Noah Johnson','Saskatoon','2025-02-18');
INSERT INTO "customers" VALUES(11,'Mia Patel','Moose Jaw','2025-03-05');
INSERT INTO "customers" VALUES(12,'Liam Brown','Regina','2025-04-22');
INSERT INTO "customers" VALUES(13,'Sophia Chen','Yorkton','2025-05-11');
INSERT INTO "customers" VALUES(14,'Ethan Wilson','Saskatoon','2025-06-01');
INSERT INTO "customers" VALUES(15,'Olivia Martin','Regina','2025-06-15');
INSERT INTO "customers" VALUES(16,'Arjun Verma','Prince Albert','2025-07-02');
INSERT INTO "customers" VALUES(17,'Ava Singh','Regina','2025-01-10');
INSERT INTO "customers" VALUES(18,'Noah Johnson','Saskatoon','2025-02-18');
INSERT INTO "customers" VALUES(19,'Mia Patel','Moose Jaw','2025-03-05');
INSERT INTO "customers" VALUES(20,'Liam Brown','Regina','2025-04-22');
INSERT INTO "customers" VALUES(21,'Sophia Chen','Yorkton','2025-05-11');
INSERT INTO "customers" VALUES(22,'Ethan Wilson','Saskatoon','2025-06-01');
INSERT INTO "customers" VALUES(23,'Olivia Martin','Regina','2025-06-15');
INSERT INTO "customers" VALUES(24,'Arjun Verma','Prince Albert','2025-07-02');
INSERT INTO "customers" VALUES(25,'Ava Singh','Regina','2025-01-10');
INSERT INTO "customers" VALUES(26,'Noah Johnson','Saskatoon','2025-02-18');
INSERT INTO "customers" VALUES(27,'Mia Patel','Moose Jaw','2025-03-05');
INSERT INTO "customers" VALUES(28,'Liam Brown','Regina','2025-04-22');
INSERT INTO "customers" VALUES(29,'Sophia Chen','Yorkton','2025-05-11');
INSERT INTO "customers" VALUES(30,'Ethan Wilson','Saskatoon','2025-06-01');
INSERT INTO "customers" VALUES(31,'Olivia Martin','Regina','2025-06-15');
INSERT INTO "customers" VALUES(32,'Arjun Verma','Prince Albert','2025-07-02');
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
INSERT INTO "demo" VALUES(1,'https://sql-page.com/','SQLPage turns SQL queries into interactive web pages, forms, maps, and dashboards.');
INSERT INTO "demo" VALUES(2,'https://fullconvert.com/','Full Convert is industry standard for database migration. Over 40 database formats supported with unparalleled speed, ease of use, and migration customization.');
INSERT INTO "demo" VALUES(3,'SQL Online AiDE','Next-Gen AI Development Environment | 10+ years of superior SLA, Performance & UX');
INSERT INTO "demo" VALUES(4,'https://t.me/s/sqliteonlinecom','Telegram channel with news about the project');
INSERT INTO "demo" VALUES(5,'N`Kirill.','https://www.linkedin.com/in/sqliteonlinecom');
INSERT INTO "demo" VALUES(6,'Import','➕ → Import');
INSERT INTO "demo" VALUES(7,'Export','[RightClick] mouse on Table OR It’s now the first one at the bottom right of the table.');
INSERT INTO "demo" VALUES(8,'SQLite OpFS (storage)','Enable OpFS on settings');
INSERT INTO "demo" VALUES(9,'Chart','LINE-SELECT name, cos(id), sin(id) FROM demo;');
INSERT INTO "demo" VALUES(10,'Short CODE','s* tableName => SELECT * FROM tableName
sf tableName => SELECT columns FROM tableName
sc tableName => SELECT count(*) FROM tableName
sl tableName => SELECT * FROM tableName ORDER BY key DESC LIMIT 100;
ct => CREATE TABLE
ii tableName => INSERT INTO
us tableName => UPDATE SET
uw tableName => UPDATE SET WHERE
df tableName => DELETE FROM
dw tableName => DELETE FROM WHERE');
INSERT INTO "demo" VALUES(11,'SQLite 3.51.1','SQL OnLine on JavaScript');
INSERT INTO "demo" VALUES(12,'[RightClick] mouse','Opens many additional features');
INSERT INTO "demo" VALUES(13,'Left-Panel, Table','[RightClick] mouse "Context menu"');
INSERT INTO "demo" VALUES(14,'Tabs','mouse: [RightClick] , [MiddleClick] , [Wheel] , [LeftClick]');
INSERT INTO "demo" VALUES(15,'SQL Editor','autocomplete: [Ctrl-Space] or [Alt-Space]; run: [Shift-Enter]');
INSERT INTO "demo" VALUES(16,'Size table','Fast scroll million rows');
INSERT INTO "demo" VALUES(17,'Share','Create public link DB');
INSERT INTO "demo" VALUES(18,'21','Number of color themes');
INSERT INTO "demo" VALUES(19,'ai.Url','https://sqliteonline.com/LICENSE');
INSERT INTO "demo" VALUES(20,'ai.Color','#9393ad');
INSERT INTO "demo" VALUES(21,'ai.Image','Blob - png, jpg, gif or String(base64) [DbClick] row');
INSERT INTO "demo" VALUES(22,'SQL','Syntax example library');
INSERT INTO "demo" VALUES(23,'CREATE','CREATE TABLE table_name (col1, col2)');
INSERT INTO "demo" VALUES(24,'SELECT','SELECT * FROM table_name');
INSERT INTO "demo" VALUES(25,'INSERT','INSERT INTO table_name (col1, col2) VALUES ("example","test")');
INSERT INTO "demo" VALUES(26,'UPDATE','UPDATE table_name SET col1="work" WHERE col2="test"');
INSERT INTO "demo" VALUES(27,'DELETE','DELETE FROM table_name');
CREATE TABLE products (
  product_id   INTEGER PRIMARY KEY AUTOINCREMENT,
  product_name TEXT NOT NULL,
  category     TEXT NOT NULL,
  unit_price   REAL NOT NULL CHECK (unit_price > 0)
);
INSERT INTO "products" VALUES(1,'Wireless Mouse','Electronics',24.99);
INSERT INTO "products" VALUES(2,'Mechanical Keyboard','Electronics',89.99);
INSERT INTO "products" VALUES(3,'USB-C Cable','Electronics',9.99);
INSERT INTO "products" VALUES(4,'Notebook (Pack of 3)','Stationery',12.49);
INSERT INTO "products" VALUES(5,'Water Bottle','Lifestyle',19.99);
INSERT INTO "products" VALUES(6,'Backpack','Lifestyle',49.99);
INSERT INTO "products" VALUES(7,'Desk Lamp','Home Office',34.99);
INSERT INTO "products" VALUES(8,'Noise Cancelling Headphones','Electronics',129.99);
CREATE TABLE sales (
  sale_id     INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_id INTEGER NOT NULL,
  product_id  INTEGER NOT NULL,
  quantity    INTEGER NOT NULL CHECK (quantity > 0),
  sale_date   DATE NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id)  REFERENCES products(product_id)
);
INSERT INTO "sales" VALUES(1,1,1,2,'2025-07-05');
INSERT INTO "sales" VALUES(2,1,3,3,'2025-07-05');
INSERT INTO "sales" VALUES(3,2,2,1,'2025-07-07');
INSERT INTO "sales" VALUES(4,2,3,2,'2025-07-07');
INSERT INTO "sales" VALUES(5,3,4,2,'2025-07-10');
INSERT INTO "sales" VALUES(6,4,6,1,'2025-07-11');
INSERT INTO "sales" VALUES(7,5,5,1,'2025-07-12');
INSERT INTO "sales" VALUES(8,6,8,1,'2025-07-15');
INSERT INTO "sales" VALUES(9,7,7,1,'2025-08-02');
INSERT INTO "sales" VALUES(10,7,1,1,'2025-08-02');
INSERT INTO "sales" VALUES(11,8,2,1,'2025-08-05');
INSERT INTO "sales" VALUES(12,8,4,3,'2025-08-05');
INSERT INTO "sales" VALUES(13,1,8,1,'2025-08-08');
INSERT INTO "sales" VALUES(14,2,1,1,'2025-08-10');
INSERT INTO "sales" VALUES(15,4,2,1,'2025-08-14');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('customers',32);
INSERT INTO "sqlite_sequence" VALUES('products',8);
INSERT INTO "sqlite_sequence" VALUES('sales',15);
COMMIT;
