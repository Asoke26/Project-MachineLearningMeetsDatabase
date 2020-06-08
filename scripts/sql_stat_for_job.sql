Table : title
1) 1000
CREATE TABLE title_1000 (
        "id"              INTEGER       NOT NULL,
        "kind_id"         INTEGER       NOT NULL,
        "production_year" INTEGER
);

 
INSERT INTO title_1000 (SELECT * from (SELECT id, kind_id, production_year from title SAMPLE 1000) as t);

2) 10K
CREATE TABLE title_10K (
        "id"              INTEGER       NOT NULL,
        "kind_id"         INTEGER       NOT NULL,
        "production_year" INTEGER
);
 
INSERT INTO title_10K (SELECT * from (SELECT id, kind_id, production_year from title SAMPLE 10000) as t);

3) 100K
CREATE TABLE title_100K (
        "id"              INTEGER       NOT NULL,
        "kind_id"         INTEGER       NOT NULL,
        "production_year" INTEGER
);

 
INSERT INTO title_100K (SELECT * from (SELECT id, kind_id, production_year from title SAMPLE 100000) as t);


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Table : movie_companies

1)
CREATE TABLE movie_companies_1000 (
        "id"              INTEGER       NOT NULL,
        "movie_id"        INTEGER       NOT NULL,
        "company_id"      INTEGER       NOT NULL,
        "company_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_companies_1000 (SELECT * from (SELECT id, movie_id, company_id, company_type_id from movie_companies SAMPLE 1000) as mc);

2)
CREATE TABLE movie_companies_10K (
        "id"              INTEGER       NOT NULL,
        "movie_id"        INTEGER       NOT NULL,
        "company_id"      INTEGER       NOT NULL,
        "company_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_companies_10K (SELECT * from (SELECT id, movie_id, company_id, company_type_id from movie_companies SAMPLE 10000) as mc);

3)
CREATE TABLE movie_companies_100K (
        "id"              INTEGER       NOT NULL,
        "movie_id"        INTEGER       NOT NULL,
        "company_id"      INTEGER       NOT NULL,
        "company_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_companies_100K (SELECT * from (SELECT id, movie_id, company_id, company_type_id from movie_companies SAMPLE 100000) as mc);

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Table : cast_info

CREATE TABLE cast_info_1000 (
        "id"             INTEGER       NOT NULL,
        "person_id"      INTEGER       NOT NULL,
        "movie_id"       INTEGER       NOT NULL,
        "role_id"        INTEGER       NOT NULL
);
INSERT INTO cast_info_1000 (SELECT * from (SELECT id, person_id, movie_id, role_id from cast_info SAMPLE 1000) as ci);
CREATE TABLE cast_info_10K (
        "id"             INTEGER       NOT NULL,
        "person_id"      INTEGER       NOT NULL,
        "movie_id"       INTEGER       NOT NULL,
        "role_id"        INTEGER       NOT NULL
);
INSERT INTO cast_info_10K (SELECT * from (SELECT id, person_id, movie_id, role_id from cast_info SAMPLE 10000) as ci);
CREATE TABLE cast_info_100K (
        "id"             INTEGER       NOT NULL,
        "person_id"      INTEGER       NOT NULL,
        "movie_id"       INTEGER       NOT NULL,
        "role_id"        INTEGER       NOT NULL
);
INSERT INTO cast_info_100K (SELECT * from (SELECT id, person_id, movie_id, role_id from cast_info SAMPLE 100000) as ci);

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Table : movie_info

CREATE TABLE movie_info_1000 (
        "id"           INTEGER       NOT NULL,
        "movie_id"     INTEGER       NOT NULL,
        "info_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_info_1000 (SELECT * from (SELECT id, movie_id, info_type_id from movie_info SAMPLE 1000) as mi);

CREATE TABLE movie_info_10K (
        "id"           INTEGER       NOT NULL,
        "movie_id"     INTEGER       NOT NULL,
        "info_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_info_10K (SELECT * from (SELECT id, movie_id, info_type_id from movie_info SAMPLE 10000) as mi);

CREATE TABLE movie_info_100K (
        "id"           INTEGER       NOT NULL,
        "movie_id"     INTEGER       NOT NULL,
        "info_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_info_100K (SELECT * from (SELECT id, movie_id, info_type_id from movie_info SAMPLE 100000) as mi);

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Table : movie_info_idx


CREATE TABLE movie_info_idx_1000 (
        "id"           INTEGER       NOT NULL,
        "movie_id"     INTEGER       NOT NULL,
        "info_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_info_idx_1000 (SELECT * from (SELECT id, movie_id, info_type_id from movie_info_idx SAMPLE 1000) as mi_idx);

CREATE TABLE movie_info_idx_10K (
        "id"           INTEGER       NOT NULL,
        "movie_id"     INTEGER       NOT NULL,
        "info_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_info_idx_10K (SELECT * from (SELECT id, movie_id, info_type_id from movie_info_idx SAMPLE 10000) as mi_idx);

CREATE TABLE movie_info_idx_100K (
        "id"           INTEGER       NOT NULL,
        "movie_id"     INTEGER       NOT NULL,
        "info_type_id" INTEGER       NOT NULL
);
INSERT INTO movie_info_idx_100K (SELECT * from (SELECT id, movie_id, info_type_id from movie_info_idx SAMPLE 100000) as mi_idx);

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Table : movie_keyword

CREATE TABLE movie_keyword_1000 (
        "id"         INTEGER       NOT NULL,
        "movie_id"   INTEGER       NOT NULL,
        "keyword_id" INTEGER       NOT NULL
);
INSERT INTO movie_keyword_1000 (SELECT * from (SELECT id, movie_id, keyword_id from movie_keyword SAMPLE 1000) as mk);

CREATE TABLE movie_keyword_10K(
        "id"         INTEGER       NOT NULL,
        "movie_id"   INTEGER       NOT NULL,
        "keyword_id" INTEGER       NOT NULL
);
INSERT INTO movie_keyword_10K (SELECT * from (SELECT id, movie_id, keyword_id from movie_keyword SAMPLE 10000) as mk);

CREATE TABLE movie_keyword_100K(
        "id"         INTEGER       NOT NULL,
        "movie_id"   INTEGER       NOT NULL,
        "keyword_id" INTEGER       NOT NULL
);
INSERT INTO movie_keyword_100K (SELECT * from (SELECT id, movie_id, keyword_id from movie_keyword SAMPLE 100000) as mk);


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

## SED usage for modifying query workload depending on SAMPLE

title:
sed -i 's/\btitle\b/title_1000/g' training_query.csv
sed -i 's/\btitle\b/title_10K/g' training_query.csv
sed -i 's/\btitle\b/title_100K/g' training_query.csv

movie_info:
sed -i 's/\bmovie_info\b/movie_info_1000/g' training_query.csv
sed -i 's/\bmovie_info\b/movie_info_10K/g' training_query.csv
sed -i 's/\bmovie_info\b/movie_info_100K/g' training_query.csv

movie_info_idx:
sed -i 's/\bmovie_info_idx\b/movie_info_idx_1000/g' training_query.csv
sed -i 's/\bmovie_info_idx\b/movie_info_idx_10K/g' training_query.csv
sed -i 's/\bmovie_info_idx\b/movie_info_idx_100K/g' training_query.csv

movie_keyword:
sed -i 's/\bmovie_keyword\b/movie_keyword_1000/g' training_query.csv
sed -i 's/\bmovie_keyword\b/movie_keyword_10K/g' training_query.csv
sed -i 's/\bmovie_keyword\b/movie_keyword_100K/g' training_query.csv

cast_info:
sed -i 's/\bcast_info\b/cast_info_1000/g' training_query.csv
sed -i 's/\bcast_info\b/cast_info_10K/g' training_query.csv
sed -i 's/\bcast_info\b/cast_info_100K/g' training_query.csv

movie_companies:
sed -i 's/\bmovie_companies\b/movie_companies_1000/g' training_query.csv
sed -i 's/\bmovie_companies\b/movie_companies_10K/g' training_query.csv
sed -i 's/\bmovie_companies\b/movie_companies_100K/g' training_query.csv
