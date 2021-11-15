create table main.country
(
    country_id  SMALLINT    not null
        primary key,
    country     VARCHAR(50) not null,
    last_update TIMESTAMP
);

