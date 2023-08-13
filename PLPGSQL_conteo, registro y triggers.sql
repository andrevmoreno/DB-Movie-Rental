
---------

CREATE OR REPLACE FUNCTION count_total_movies()
RETURNS int
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN COUNT(*) FROM peliculas;
END
$$;

SELECT count_total_movies();

----
CREATE OR REPLACE FUNCTION duplicate_records()
  RETURNS trigger AS
$$
BEGIN
	INSERT INTO aaab(bbba, ccca)
	VALUES(NEW.bbb, NEW.ccc);
   	RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER aaa_changes
	BEFORE INSERT
	ON aaa
	FOR EACH ROW
	EXECUTE PROCEDURE duplicate_records();

INSERT INTO aaa (bbb, ccc)
VALUES ('asdfl', 'nuevo');

DROP TRIGGER IF EXISTS aaa_changes
ON aaa;