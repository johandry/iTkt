PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS Users (
  id INTEGER PRIMARY KEY NOT NULL, 
  first_name         TEXT NOT NULL, 
  last_name          TEXT NOT NULL, 
  email              TEXT,
  team_id            INTEGER,
	created_on         DATETIME,
	
	FOREIGN KEY (team_id) REFERENCES Teams (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TRIGGER insert_Users_created_on AFTER INSERT 
ON Users
BEGIN
  UPDATE Users SET created_on = DATETIME('NOW') WHERE rowid = new.rowid;
END;
COMMIT;