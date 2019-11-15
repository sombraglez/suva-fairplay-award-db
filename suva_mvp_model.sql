
CREATE TABLE player (
 id serial PRIMARY KEY,
 firstname varchar(50) NOT NULL,
 lastname varchar(50) NOT NULL
);

CREATE TABLE league (
id serial PRIMARY KEY,
name varchar(50) NOT NULL,
description varchar(255) 
);

CREATE TABLE team (
id serial PRIMARY KEY,
name varchar(50) NOT NULL,
description varchar(255),
league_id integer NOT NULL
);

ALTER TABLE team 
ADD CONSTRAINT team_league_fk FOREIGN KEY (league_id) REFERENCES league (id);

CREATE TABLE player_team (
id serial PRIMARY KEY,
player_id integer NOT NULL,
team_id integer NOT NULL
);

ALTER TABLE player_team 
ADD CONSTRAINT team_player_player_id_fk FOREIGN KEY (player_id) REFERENCES player (id);

ALTER TABLE player_team 
ADD CONSTRAINT team_player_team_id_fk FOREIGN KEY (team_id) REFERENCES team (id);

CREATE TABLE game (
id serial PRIMARY KEY,
game_date date NOT NULL,
description varchar(255),
start_time time NOT NULL,
end_time time NOT NULL,
qrcode_id varchar(50) NOT NULL,
hometeam_id integer NOT NULL,
awayteam_id integer NOT NULL
);

ALTER TABLE game 
ADD CONSTRAINT game_hometema_fk FOREIGN KEY (hometeam_id) REFERENCES team (id);

ALTER TABLE game
ADD CONSTRAINT game_awayteam_fk FOREIGN KEY (awayteam_id) REFERENCES team (id);




