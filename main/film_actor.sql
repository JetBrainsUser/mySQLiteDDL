create table main.film_actor
(
    actor_id    INT       not null
        constraint fk_film_actor_actor
            references main.actor
            on update cascade,
    film_id     INT       not null
        constraint fk_film_actor_film
            references main.film
            on update cascade,
    last_update TIMESTAMP not null,
    primary key (actor_id, film_id)
);

create index main.idx_fk_film_actor_actor
    on main.film_actor (actor_id);

create index main.idx_fk_film_actor_film
    on main.film_actor (film_id);

