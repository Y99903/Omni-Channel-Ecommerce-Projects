Create Tables For Omni Channel Analytics Project

Customer :- 
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(150) NOT NULL,
  email VARCHAR(200),
  city VARCHAR(100),
  country VARCHAR(100),
  signup_date DATE,
  INDEX (city),
  INDEX (country)
) ENGINE=InnoDB;

Products :- 
 CREATE TABLE products (
  product_id INT PRIMARY KEY,
  sku VARCHAR(80),
  product_name VARCHAR(255),
  category VARCHAR(100),
  brand VARCHAR(100),
  unit_cost DECIMAL(10,2),
  unit_price DECIMAL(10,2),
  INDEX (category)
) ENGINE=InnoDB;


Stores :- 
CREATE TABLE stores (
  store_id INT PRIMARY KEY,
  store_name VARCHAR(150),
  city VARCHAR(100),
  country VARCHAR(100),
  open_date DATE,
  INDEX (city),
  INDEX (country)
) ENGINE=InnoDB;

Sales :- 
CREATE TABLE sales (
  sale_id BIGINT PRIMARY KEY,
  customer_id INT,
  store_id INT NULL,
  sale_datetime DATETIME NOT NULL,
  channel ENUM('Online','Store') DEFAULT 'Online',
  payment_method VARCHAR(50),
  order_status VARCHAR(50),
  total_amount DECIMAL(12,2),
  total_cost DECIMAL(12,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id),
  INDEX (sale_datetime),
  INDEX (channel)
) ENGINE=InnoDB;

Sales Items  :- 
CREATE TABLE sale_items (
  line_id BIGINT PRIMARY KEY,
  sale_id BIGINT,
  product_id INT,
  quantity INT,
  unit_price DECIMAL(10,2),
  discount DECIMAL(5,2),
  line_total DECIMAL(12,2),
  FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  INDEX (product_id)
) ENGINE=InnoDB;


Web Events :-
 CREATE TABLE web_events (
  event_id BIGINT PRIMARY KEY,
  session_id VARCHAR(100),
  customer_id INT NULL,
  event_time DATETIME,
  event_type VARCHAR(50), -- view_product, add_to_cart, begin_checkout, purchase
  product_id INT NULL,
  page_url VARCHAR(255),
  user_agent VARCHAR(255),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  INDEX (event_time),
  INDEX (event_type)
) ENGINE=InnoDB;


Staff Shifts :-
 CREATE TABLE staff_shifts (
  shift_id BIGINT PRIMARY KEY,
  staff_id INT,
  store_id INT,
  shift_start DATETIME,
  shift_end DATETIME,
  scheduled_hours DECIMAL(5,2),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
) ENGINE=InnoDB;


Staff :-
CREATE TABLE staff (
  staff_id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  role VARCHAR(50),
  store_id INT,
  hire_date DATE,
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
) ENGINE=InnoDB;


Inventory Snapshots :-
CREATE TABLE inventory_snapshots (
  product_id INT,
  snapshot_date DATE,
  store_id INT,
  stock_on_hand INT,
  PRIMARY KEY (product_id, store_id, snapshot_date),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
) ENGINE=InnoDB;

Promotion :-

CREATE TABLE inventory_snapshots (
  product_id INT,
  snapshot_date DATE,
  store_id INT,
  stock_on_hand INT,
  PRIMARY KEY (product_id, store_id, snapshot_date),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
) ENGINE=InnoDB;
