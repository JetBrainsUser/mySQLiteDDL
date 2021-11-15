create table main.table1
(
    a integer
        primary key autoincrement,
    b int
        unique,
    c int
        constraint u1
            unique,
    unique (a, b),
    constraint u2
        unique (a, c)
);

