DROP TABLE IF EXISTS favorite_food;
DROP TABLE IF EXISTS person;
CREATE TABLE person (
  person_id SMALLINT UNSIGNED,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  gender CHAR(1) CHECK (gender in ('M', 'F')),
  birth_date DATE,
  address VARCHAR(20),
  city VARCHAR(20),
  state VARCHAR(20),
  coutry VARCHAR(20),
  postal_code VARCHAR(20),
  PRIMARY KEY(person_id)
);
ALTER TABLE
  person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;
DROP TABLE IF EXISTS favorite_food;
CREATE TABLE favorite_food(
  person_id SMALLINT UNSIGNED,
  food VARCHAR(20),
  PRIMARY KEY(person_id, food),
  FOREIGN KEY(person_id) REFERENCES person(person_id)
);
DESC person;
DESC favorite_food;
