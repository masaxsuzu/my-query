DROP TABLE corporation;

CREATE TABLE corporation (
	corp_id SMALLINT,
	name VARCHAR(30),
	CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
	);

INSERT INTO corporation (
	corp_id,
	name
	)
VALUES (
	27,
	'ABC.COM'
	);

SELECT name
FROM corporation
WHERE corp_id = 27;

SELECT name
FROM corporation
WHERE corp_id = 0;
