create table main.actor
(
    actor_id    numeric     not null
        primary key,
    first_name  VARCHAR(45) not null,
    last_name   VARCHAR(45) not null,
    last_update TIMESTAMP   not null
);

create index main.idx_actor_last_name
    on main.actor (last_name);

