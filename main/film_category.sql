create table main.film_category
(
    film_id     INT       not null
        constraint fk_film_category_film
            references main.film
            on update cascade,
    category_id SMALLINT  not null
        constraint fk_film_category_category
            references main.category
            on update cascade,
    last_update TIMESTAMP not null,
    primary key (film_id, category_id)
);

create index main.idx_fk_film_category_category
    on main.film_category (category_id);

create index main.idx_fk_film_category_film
    on main.film_category (film_id);

