-- Adding Teams
INSERT INTO Teams (name, email) VALUES ('App Admin', 'app_admin@company.com');
INSERT INTO Teams (name, email) VALUES ('Finance',   'finance@company.com'  );

-- Adding Users
INSERT INTO Users (first_name, last_name, email, team_id) VALUES ('Johandry', 'Amador', 'johandry@company.com', 1);
INSERT INTO Users (first_name, last_name, email, team_id) VALUES ('John', 'Smith', 'johnsmith@company.com', 2);
INSERT INTO Users (first_name, last_name, email, team_id) VALUES ('Juan', 'Smith', 'juansmith@company.com', 2);