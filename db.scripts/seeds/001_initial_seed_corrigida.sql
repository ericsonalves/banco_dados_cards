INSERT INTO tbl_types (name) VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Darkness'),
('Metal'),
('Dragon'),
('Colorless');

INSERT INTO tbl_stages (name) VALUES
('Basic'),
('Stage 1'),
('Stage 2'),
('V'),
('VMAX'),
('EX'),
('GX');

INSERT INTO tbl_collections (
    collection_set_name,
    release_date,
    total_cards_in_collection
) VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62),
('Team Rocket', '2000-04-24', 83),
('151', '2023-09-22', 207),
('Neo Genesis', '2000-12-16', 111),
('Expedition Base Set', '2002-09-15', 165),
('Hidden Fates', '2019-08-23', 69),
('Crown Zenith', '2023-01-20', 160),
('Paldea Evolved', '2023-06-09', 279);

INSERT INTO tbl_cards (
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weak,
    resistance,
    retreat,
    card_number_in_collection
) VALUES
(1,1,1,40,'Bulbasaur','Seed Pokemon','Leech Seed','20','Fire',NULL,1,'44'),
(1,1,2,60,'Ivysaur','Seed Pokemon','Vine Whip','30','Fire',NULL,1,'30'),
(1,1,3,100,'Venusaur','Seed Pokemon','Solarbeam','60','Fire',NULL,2,'15'),

(1,2,1,50,'Charmander','Lizard Pokemon','Scratch','10','Water',NULL,1,'46'),
(1,2,2,80,'Charmeleon','Flame Pokemon','Slash','30','Water',NULL,2,'24'),
(1,2,3,120,'Charizard','Flame Pokemon','Fire Spin','100','Water','Fighting',3,'4'),

(1,3,1,40,'Squirtle','Tiny Turtle Pokemon','Bubble','10','Lightning',NULL,1,'63'),
(1,3,2,70,'Wartortle','Turtle Pokemon','Bite','40','Lightning',NULL,1,'42'),
(1,3,3,100,'Blastoise','Shellfish Pokemon','Hydro Pump','40+','Lightning',NULL,3,'2'),

(1,4,1,40,'Pikachu','Mouse Pokemon','Thunder Jolt','30','Fighting',NULL,1,'58'),
(1,5,1,50,'Mewtwo','Genetic Pokemon','Psychic','20+','Psychic',NULL,3,'10'),

(2,10,1,90,'Snorlax','Sleeping Pokemon','Body Slam','30','Fighting','Psychic',4,'11'),
(2,10,1,60,'Eevee','Evolution Pokemon','Tackle','10','Fighting','Psychic',1,'51'),
(2,1,1,80,'Pinsir','Stag Beetle Pokemon','Irongrip','20','Fire',NULL,1,'9'),

(3,5,1,50,'Gastly','Gas Pokemon','Sleeping Gas',NULL,'Psychic','Fighting',0,'33'),
(3,5,2,80,'Haunter','Gas Pokemon','Nightmare','10','Psychic','Fighting',1,'21'),
(3,5,3,100,'Gengar','Shadow Pokemon','Dark Mind','30','Psychic','Fighting',2,'5'),

(4,7,1,50,'Dark Charmander','Lizard Pokemon','Tail Slap','20','Water',NULL,1,'50'),
(4,7,2,70,'Dark Charmeleon','Flame Pokemon','Headbutt','30','Water',NULL,2,'32'),
(4,7,3,80,'Dark Charizard','Flame Pokemon','Continuous Fireball','50','Water',NULL,3,'4'),

(5,4,1,70,'Pichu','Tiny Mouse Pokemon','Zzzap',NULL,'Fighting',NULL,0,'12'),
(5,4,1,60,'Mareep','Wool Pokemon','Thunder Shock','20','Fighting',NULL,1,'75'),
(5,4,2,80,'Flaaffy','Wool Pokemon','Discharge','30','Fighting',NULL,1,'34'),
(5,4,3,100,'Ampharos','Light Pokemon','Thunder Punch','40+','Fighting',NULL,2,'1'),

(6,10,1,60,'Pidgey','Tiny Bird Pokemon','Whirlwind','10','Lightning','Fighting',1,'121'),
(6,10,2,80,'Pidgeotto','Bird Pokemon','Wing Attack','20','Lightning','Fighting',1,'123'),
(6,10,3,120,'Pidgeot','Bird Pokemon','Clutch','40','Lightning','Fighting',2,'124'),

(7,2,6,220,'Charizard EX','Flame Pokemon','Slash','60','Water',NULL,2,'12'),
(7,5,6,180,'Mew EX','New Species Pokemon','Psyshot','30','Psychic',NULL,1,'24'),

(8,4,4,200,'Pikachu V','Mouse Pokemon','Charge','30','Fighting',NULL,1,'49'),
(8,4,5,310,'Pikachu VMAX','Mouse Pokemon','G-Max Volt Tackle','120','Fighting',NULL,2,'44'),

(9,2,1,70,'Fuecoco','Fire Croc Pokemon','Combustion','30','Water',NULL,1,'35'),
(9,3,1,70,'Quaxly','Duckling Pokemon','Rain Splash','20','Lightning',NULL,1,'52'),
(9,1,1,70,'Sprigatito','Grass Cat Pokemon','Leafage','20','Fire',NULL,1,'13'),

(10,1,1,70,'Bulbasaur','Seed Pokemon','Vine Whip','20','Fire',NULL,1,'001'),
(10,2,1,70,'Charmander','Lizard Pokemon','Combustion','30','Water',NULL,1,'004'),
(10,3,1,70,'Squirtle','Tiny Turtle Pokemon','Water Gun','20','Lightning',NULL,1,'007'),
(10,4,1,60,'Pikachu','Mouse Pokemon','Thunder Shock','20','Fighting',NULL,1,'025'),
(10,5,1,70,'Abra','Psi Pokemon','Psy Bolt','10','Psychic',NULL,0,'063'),
(10,5,2,90,'Kadabra','Psi Pokemon','Mind Shock','30','Psychic',NULL,1,'064'),
(10,5,3,130,'Alakazam','Psi Pokemon','Psychic Sphere','90','Psychic',NULL,2,'065');