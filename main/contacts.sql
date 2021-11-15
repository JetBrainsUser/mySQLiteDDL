create table main.contacts
(
    contact_id INTEGER
        primary key,
    first_name TEXT not null,
    last_name  TEXT not null,
    email      TEXT,
    phone      TEXT not null,
    check (length(phone) >= 10)
);

