BEGIN TRANSACTION;
CREATE TABLE sales (
    order_id INTEGER PRIMARY KEY,
    product TEXT,
    quantity INTEGER,
    price REAL
);
INSERT INTO "sales" VALUES(1,'Apples',10,2.5);
INSERT INTO "sales" VALUES(2,'Bananas',5,1.2);
INSERT INTO "sales" VALUES(3,'Oranges',8,1.8);
INSERT INTO "sales" VALUES(4,'Apples',6,2.5);
INSERT INTO "sales" VALUES(5,'Bananas',9,1.2);
COMMIT;
