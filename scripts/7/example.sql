DROP TABLE IF EXISTS string;
CREATE TABLE string
(
    cha CHAR(30),
    vch VARCHAR(30),
    txt TEXT
);
INSERT INTO string (cha,vch, txt)
VALUES ('This is char', 'This is varchar', 'This is text');

UPDATE string
SET vch = 'This is ''varchar''';

SELECT QUOTE(vch) FROM string;

SELECT CHAR(128);

SELECT CONCAT('danke sch', CHAR(148), 'n');
