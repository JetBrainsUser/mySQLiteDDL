create table main.payment
(
    payment_id   int           not null
        primary key,
    customer_id  INT           not null
        constraint fk_payment_customer
            references main.customer,
    staff_id     SMALLINT      not null
        constraint fk_payment_staff
            references main.staff,
    rental_id    INT default NULL
        constraint fk_payment_rental
            references main.rental
            on update cascade on delete set null,
    amount       DECIMAL(5, 2) not null,
    payment_date TIMESTAMP     not null,
    last_update  TIMESTAMP     not null
);

create index main.idx_fk_customer_id
    on main.payment (customer_id);

create index main.idx_fk_staff_id
    on main.payment (staff_id);

