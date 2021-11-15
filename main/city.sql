create table main.city
(
    city_id     int         not null
        primary key,
    city        VARCHAR(50) not null,
    country_id  SMALLINT    not null
        constraint fk_city_country
            references main.country
            on update cascade,
    last_update TIMESTAMP   not null
);

create index main.idx_fk_country_id
    on main.city (country_id);

