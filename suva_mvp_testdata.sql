INSERT INTO player (firstname, lastname) VALUES ('Hans', 'Muster');
INSERT INTO player (firstname, lastname) VALUES ('Alice', 'Wonderland');
INSERT INTO player (firstname, lastname) VALUES ('David', 'Beckham');

INSERT INTO league (name, description) VALUES ('Liga interregional - Gruppe 1', 'Liga interregional - Gruppe 1');
INSERT INTO league (name, description) VALUES ('Liga interregional - Gruppe 2', 'Liga interregional - Gruppe 2');
INSERT INTO league (name, description) VALUES ('Liga interregional - Gruppe 3', 'Liga interregional - Gruppe 3');

INSERT INTO team (name, description, league_id) VALUES('FC Sierre','Team description',1);
INSERT INTO team (name, description, league_id) VALUES('FC Forward-Morges I','Team description',1);
INSERT INTO team (name, description, league_id) VALUES('FC Konolfingen','Team description',2);
INSERT INTO team (name, description, league_id) VALUES('FC Spiez','Team description',3);

INSERT INTO player_team (player_id, team_id) VALUES (1,1);
INSERT INTO player_team (player_id, team_id) VALUES (2,1);
INSERT INTO player_team (player_id, team_id) VALUES (3,2);

INSERT INTO game (game_date, description, start_time, end_time, qrcode_id, hometeam_id, awayteam_id) VALUES ('2019-11-18','First game','11:00', '13:00','cKsm8S9m5SfhCCLRw1WG',1,2);
INSERT INTO game (game_date, description, start_time, end_time, qrcode_id, hometeam_id, awayteam_id) VALUES ('2019-11-23','Second game','10:00', '12:00','R8qYpsUomxMXuJ9P5Qo8', 3, 4);
