create table main.staff
(
    staff_id    SMALLINT    not null
        primary key,
    first_name  VARCHAR(45) not null,
    last_name   VARCHAR(45) not null,
    address_id  INT         not null
        constraint fk_staff_address
            references main.address
            on update cascade,
    picture     BLOB        default NULL,
    email       VARCHAR(50) default NULL,
    store_id    INT         not null
        constraint fk_staff_store
            references main.store
            on update cascade,
    active      SMALLINT    default 1 not null,
    username    VARCHAR(16) not null,
    password    VARCHAR(40) default NULL,
    last_update TIMESTAMP   not null
);

create index main.idx_fk_staff_address_id
    on main.staff (address_id);

create index main.idx_fk_staff_store_id
    on main.staff (store_id);

