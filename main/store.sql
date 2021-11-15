create table main.store
(
    store_id         INT       not null
        primary key,
    manager_staff_id SMALLINT  not null
        constraint fk_store_staff
            references main.staff,
    address_id       INT       not null
        constraint fk_store_address
            references main.address,
    last_update      TIMESTAMP not null
);

create index main.idx_fk_store_address
    on main.store (address_id);

create index main.idx_store_fk_manager_staff_id
    on main.store (manager_staff_id);

