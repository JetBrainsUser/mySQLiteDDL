create table main.film
(
    film_id              int          not null
        primary key,
    title                VARCHAR(255) not null,
    description          BLOB SUB_TYPE TEXT default NULL,
    release_year         VARCHAR(4)         default NULL,
    language_id          SMALLINT     not null
        constraint fk_film_language
            references main.language,
    original_language_id SMALLINT           default NULL
        constraint fk_film_language_original
            references main.language,
    rental_duration      SMALLINT           default 3 not null,
    rental_rate          DECIMAL(4, 2)      default 4.99 not null,
    length               SMALLINT           default NULL,
    replacement_cost     DECIMAL(5, 2)      default 19.99 not null,
    rating               VARCHAR(10)        default 'G',
    special_features     VARCHAR(100)       default NULL,
    last_update          TIMESTAMP    not null,
    constraint CHECK_special_features
        check (special_features is null or
               special_features like '%Trailers%' or
               special_features like '%Commentaries%' or
               special_features like '%Deleted Scenes%' or
               special_features like '%Behind the Scenes%'),
    constraint CHECK_special_rating
        check (rating in ('G', 'PG', 'PG-13', 'R', 'NC-17'))
);

create index main.idx_fk_language_id
    on main.film (language_id);

create index main.idx_fk_original_language_id
    on main.film (original_language_id);

