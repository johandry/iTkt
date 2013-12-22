BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS Teams (
  id INTEGER PRIMARY KEY NOT NULL, 
  name               TEXT NOT NULL, 
  email              TEXT,
  created_on         DATETIME
);

CREATE TRIGGER insert_Teams_created_on AFTER INSERT 
ON Teams
BEGIN
  UPDATE Teams SET created_on = DATETIME('NOW') WHERE rowid = new.rowid;
END;
COMMIT;