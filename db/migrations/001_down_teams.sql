BEGIN TRANSACTION;
DROP TRIGGER insert_Teams_created_on;
DROP TABLE IF EXISTS Teams;
COMMIT;