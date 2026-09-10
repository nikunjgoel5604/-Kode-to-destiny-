use nk_store;
create table if not exists nk_store (
			store_id int auto_increment primary key ,
			login_id VARCHAR(255) unique not null , 
			Store_name varchar (255) default '',
            user_name varchar (255) default ''
			);

CREATE TABLE IF NOT EXISTS nk_inventory (
		inventory_id INT AUTO_INCREMENT PRIMARY KEY,
		store_id INT NOT NULL,
		Store_name VARCHAR(255) DEFAULT '',
		product_name VARCHAR(255),
		product_serial_no VARCHAR(255),
		mfg_date DATE,
		expire_date DATE,
		quantity INT,
		location VARCHAR(255),
		rack_address VARCHAR(255),
		shelf_address VARCHAR(255),
		purchase_price DECIMAL(10,2),
		selling_price DECIMAL(10,2),
		FOREIGN KEY (store_id) REFERENCES nk_store(store_id)
);

 CREATE TABLE IF NOT EXISTS Order_s (
		order_id INT AUTO_INCREMENT PRIMARY KEY,
		product_name VARCHAR(255),
		product_serial_no VARCHAR(255),
		mfg_date DATE,
		expire_date DATE,
		selling_price DECIMAL(10,2)
);
        
INSERT INTO nk_store (login_id, Store_name, User_name)
VALUES
    ('Nk001', 'nk_medical_store' , 'nikunj'),
    ('NK002', 'Panipat_iron_store' , 'harsh001'),
    ('NK003', 'Century_store' , 'AK sharma'),
    ('NK004', 'aman books' , 'rahul001'),
    ('NK005', 'jc store' , 'AK sharma');
    ;
INSERT INTO nk_inventory (
    store_id,
    Store_name,
    product_name,
    product_serial_no,
    mfg_date,
    expire_date,
    quantity,
    location,
    rack_address,
    shelf_address,
    purchase_price,
    selling_price
)
VALUES
    (1, 'nk_medical_store',
     'Paracetamol 500mg', 'MED001',
     '2026-01-10', '2028-01-10',
     100, 'A1', 'R01', 'S01',
     12.00, 18.00),
    (1, 'nk_medical_store',
     'Amoxicillin 500mg', 'MED002',
     '2026-02-15', '2028-02-15',
     75, 'A1', 'R01', 'S02',
     25.00, 35.00),
    (1, 'nk_medical_store',
     'Cetirizine 10mg', 'MED003',
     '2026-03-05', '2028-03-05',
     120, 'A1', 'R02', 'S01',
     8.00, 15.00),
    (2, 'Panipat_iron_store',
     'Iron Rod 10mm', 'IRON001',
     '2026-01-20', '2031-01-20',
     250, 'B1', 'R01', 'S01',
     450.00, 520.00),
    (2, 'Panipat_iron_store',
     'Iron Rod 12mm', 'IRON002',
     '2026-02-12', '2031-02-12',
     180, 'B1', 'R01', 'S02',
     550.00, 630.00),
    (3, 'Century_store',
     'A4 Notebook', 'BOOK001',
     '2026-04-01', '2030-04-01',
     200, 'C1', 'R01', 'S01',
     35.00, 50.00),
    (3, 'Century_store',
     'Blue Ball Pen', 'BOOK002',
     '2026-04-10', '2030-04-10',
     500, 'C1', 'R01', 'S02',
     5.00, 10.00),
    (4, 'aman_books',
     'Register 200 Pages', 'BOOK003',
     '2026-03-25', '2030-03-25',
     150, 'C1', 'R02', 'S01',
     55.00, 80.00),
    (5, 'jc_store',
     'Mobile Charger 20W', 'ELEC001',
     '2026-05-01', '2030-05-01',
     80, 'D1', 'R01', 'S01',
     180.00, 299.00),
    (5, 'jc_store',
     'USB Cable Type-C', 'ELEC002',
     '2026-05-10', '2030-05-10',
     300, 'D1', 'R01', 'S02',
     70.00, 149.00);

INSERT INTO Order_s (
    product_name,
    product_serial_no,
    mfg_date,
    expire_date,
    selling_price
)
VALUES
    ('Paracetamol 500mg', 'MED001', '2026-01-10', '2028-01-10', 18.00),
    ('Amoxicillin 500mg', 'MED002', '2026-02-15', '2028-02-15', 35.00),
    ('Cetirizine 10mg', 'MED003', '2026-03-05', '2028-03-05', 15.00),
    ('Iron Rod 10mm', 'IRON001', '2026-01-20', '2031-01-20', 520.00),
    ('Iron Rod 12mm', 'IRON002', '2026-02-12', '2031-02-12', 630.00),
    ('A4 Notebook', 'BOOK001', '2026-04-01', '2030-04-01', 50.00),
    ('Blue Ball Pen', 'BOOK002', '2026-04-10', '2030-04-10', 10.00),
    ('Register 200 Pages', 'BOOK003', '2026-03-25', '2030-03-25', 80.00),
    ('Mobile Charger 20W', 'ELEC001', '2026-05-01', '2030-05-01', 299.00),
    ('USB Cable Type-C', 'ELEC002', '2026-05-10', '2030-05-10', 149.00);


select * from nk_store;
select * from nk_inventory;
select * from Order_s;