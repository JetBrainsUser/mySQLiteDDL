create table main.inventory
(
    inventory_id INT       not null
        primary key,
    film_id      INT       not null
        constraint fk_inventory_film
            references main.film
            on update cascade,
    store_id     INT       not null
        constraint fk_inventory_store
            references main.store
            on update cascade,
    last_update  TIMESTAMP not null
);

create index main.idx_fk_film_id
    on main.inventory (film_id);

create index main.idx_fk_film_id_store_id
    on main.inventory (store_id, film_id);

