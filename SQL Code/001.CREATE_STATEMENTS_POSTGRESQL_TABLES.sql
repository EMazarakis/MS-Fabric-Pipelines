CREATE TABLE "Retail".categories (
    category_id   INTEGER PRIMARY KEY,
    category_name TEXT
);
-------------------------------------------------

CREATE TABLE "Retail".employees (
    employee_id INTEGER PRIMARY KEY,
    store_id    INTEGER,
    salary      INTEGER
);
-------------------------------------------------
CREATE TABLE "Retail".products (
    product_id  INTEGER PRIMARY KEY,
    category_id INTEGER,
    supplier_id INTEGER,
    price       INTEGER
);
-------------------------------------------------
CREATE TABLE "Retail".promotions (
    promotion_id INTEGER PRIMARY KEY,
    discount     INTEGER
);
-------------------------------------------------
CREATE TABLE "Retail".stores (
    store_id INTEGER PRIMARY KEY,
    city     TEXT
);
-------------------------------------------------
CREATE TABLE "Retail".suppliers (
    supplier_id INTEGER PRIMARY KEY,
    country     TEXT
);
-------------------------------------------------
CREATE TABLE "Retail".customers (
    customer_id  INTEGER PRIMARY KEY,
    city         TEXT,
    signup_date  DATE
);
-------------------------------------------------
CREATE TABLE "Retail".order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id      INTEGER,
    product_id    INTEGER,
    qty           INTEGER,
    price         INTEGER
);
-------------------------------------------------
CREATE TABLE "Retail".orders (
    order_id      INTEGER PRIMARY KEY,
    customer_id   INTEGER,
    store_id      INTEGER,
    order_date    DATE,
    promotion_id  INTEGER
);
-------------------------------------------------
CREATE TABLE "Retail".payments (
    payment_id  INTEGER PRIMARY KEY,
    order_id    INTEGER,
    amount      INTEGER
);
-------------------------------------------------
CREATE TABLE "Retail".returns (
    return_id      INTEGER PRIMARY KEY,
    order_item_id  INTEGER,
    refund         INTEGER
);
-------------------------------------------------
CREATE TABLE "Retail".shipments (
    shipment_id  INTEGER PRIMARY KEY,
    order_id     INTEGER,
    status       TEXT
);
