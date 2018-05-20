DROP TABLE IF EXISTS name_basics;
CREATE TABLE name_basics (
  nconst varchar(80),
  primary_name varchar(110),
  -- birth_year integer NULL,
  birth_year varchar(10),
  -- death_year integer NULL,
  death_year varchar(10),
  primary_profession varchar(80),
  known_for_titles varchar(80)
);

\copy name_basics FROM 'name.basics.tsv' DELIMITER E'\t';
