create table main.table_with_checks
(
    a int,
    b int,
    check (a + b != -1),
    check (a < 2),
    constraint c1
        check (b < 2),
    constraint c2
        check (a + b != 2)
);

