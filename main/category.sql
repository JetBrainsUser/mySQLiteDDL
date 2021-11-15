create table main.category
(
    category_id SMALLINT    not null
        primary key,
    name        VARCHAR(25) not null,
    last_update TIMESTAMP   not null
);

