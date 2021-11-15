create table main.film_text
(
    film_id     SMALLINT     not null
        primary key,
    title       VARCHAR(255) not null,
    description BLOB SUB_TYPE TEXT
);

