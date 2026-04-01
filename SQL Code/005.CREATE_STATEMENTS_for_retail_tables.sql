-------------------------------------------------
CREATE TABLE [retail].dim_categories (
    category_id        INT,
    category_name      VARCHAR(200),
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);


-------------------------------------------------
CREATE TABLE [retail].dim_orders (
    order_id      INT,
    customer_id   INT,
    store_id      INT,
    order_date    DATE,
    promotion_id  INT,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);


-------------------------------------------------
CREATE TABLE [retail].employees (
    employee_id INT,
    store_id    INT,
    salary      INT,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].products (
    product_id  INT,
    category_id INT,
    supplier_id INT,
    price       INT,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].promotions (
    promotion_id INT,
    discount     INT,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].stores (
    store_id INT,
    city     VARCHAR(200),
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].suppliers (
    supplier_id INT,
    country     VARCHAR(200),
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].customers (
    customer_id  INT,
    city         VARCHAR(200),
    signup_date  DATE,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].order_items (
    order_item_id INT,
    order_id      INT,
    product_id    INT,
    qty           INT,
    price         INT,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);

-------------------------------------------------
CREATE TABLE [retail].payments (
    payment_id INT,
    order_id   INT,
    amount     INT,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].returns (
    return_id      INT,
    order_item_id  INT,
    refund         INT,
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
-------------------------------------------------
CREATE TABLE [retail].shipments (
    shipment_id INT,
    order_id    INT,
    status      VARCHAR(100),
    insert_batch_id    BIGINT,       
    update_batch_id    BIGINT
);
