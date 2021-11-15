create table main.rental
(
    rental_id    INT       not null
        primary key,
    rental_date  TIMESTAMP not null,
    inventory_id INT       not null
        constraint fk_rental_inventory
            references main.inventory,
    customer_id  INT       not null
        constraint fk_rental_customer
            references main.customer,
    return_date  TIMESTAMP default NULL,
    staff_id     SMALLINT  not null
        constraint fk_rental_staff
            references main.staff,
    last_update  TIMESTAMP not null
);

create index main.idx_rental_fk_customer_id
    on main.rental (customer_id);

create index main.idx_rental_fk_inventory_id
    on main.rental (inventory_id);

create index main.idx_rental_fk_staff_id
    on main.rental (staff_id);

create unique index main.idx_rental_uq
    on main.rental (rental_date, inventory_id, customer_id);

