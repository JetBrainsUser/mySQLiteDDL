create table main.language
(
    language_id SMALLINT  not null
        primary key,
    name        CHAR(20)  not null,
    last_update TIMESTAMP not null
);

