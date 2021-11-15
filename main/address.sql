create table main.address
(
    address_id  int         not null
        primary key,
    address     VARCHAR(50) not null,
    address2    VARCHAR(50) default NULL,
    district    VARCHAR(20) not null,
    city_id     INT         not null
        constraint fk_address_city
            references main.city
            on update cascade,
    postal_code VARCHAR(10) default NULL,
    phone       VARCHAR(20) not null,
    last_update TIMESTAMP   not null
);

create index main.idx_fk_city_id
    on main.address (city_id);

