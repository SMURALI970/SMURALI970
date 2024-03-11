--creating table called product_category:
CREATE TABLE product_category (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP NOT NULL,
  modified_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP
);

--creating table called product:

CREATE TABLE product (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  SKU VARCHAR(255) NOT NULL,
  category_id INT NOT NULL,
  inventory_id INT,
  price DECIMAL(10,2) NOT NULL,
  discount_id INT,
  created_at TIMESTAMP NOT NULL,
  modified_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES product_category(id),
  FOREIGN KEY (inventory_id) REFERENCES product_inventory(id)
);

--creating table called product inventory :

CREATE TABLE product_inventory (
  id INT PRIMARY KEY,
  quantity INT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  modified_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP
);

--creating table called for discount:

CREATE TABLE discount (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  discount_percent DECIMAL(5,2) NOT NULL,
  active BOOLEAN NOT NULL,
  created_at TIMESTAMP NOT NULL,
  modified_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP
);

--check constraint:
ALTER TABLE product
ADD CONSTRAINT fk_product_inventory_valid_id
CHECK (inventory_id IN (SELECT id FROM product_inventory));

