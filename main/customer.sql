create table main.customer
(
    customer_id INT         not null
        primary key,
    store_id    INT         not null
        constraint fk_customer_store
            references main.store
            on update cascade,
    first_name  VARCHAR(45) not null,
    last_name   VARCHAR(45) not null,
    email       VARCHAR(50) default NULL,
    address_id  INT         not null
        constraint fk_customer_address
            references main.address
            on update cascade,
    active      CHAR(1)     default 'Y' not null,
    create_date TIMESTAMP   not null,
    last_update TIMESTAMP   not null
);

create index main.idx_customer_fk_address_id
    on main.customer (address_id);

create index main.idx_customer_fk_store_id
    on main.customer (store_id);

create index main.idx_customer_last_name
    on main.customer (last_name);

