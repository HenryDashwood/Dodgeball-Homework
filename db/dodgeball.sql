CREATE TABLE Team (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE Match (
  id serial4 primary key,
  home_team_id int4 references team(id), 
  away_team_id int4 references team(id),
  winning_team_id int4 
);
