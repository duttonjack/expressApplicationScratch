DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS patrons;

CREATE TABLE patrons (
    patronID SERIAL PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    phoneNumber CHAR(10) NOT NULL
);

CREATE TABLE books (
    BookID SERIAL PRIMARY KEY NOT NULL,
    patronID INTEGER REFERENCES patrons(patronID),
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL
);

INSERT INTO patrons (name, phoneNumber) VALUES 
('Stephanie Bilovsky', '1345193132'),
('Maddie Lassen', '6084963587'),
('Sherm Alcoran', '4093488145'),
('Claudian Eke', '4072454528'),
('Lawrence Mulvaney', '7572399027');

INSERT INTO books (patronID, title, author, genre) VALUES 
 (1,'The Silent Echo', 'Alexandra Quinn', 'Alexandra Quinn'),
 (2,'Whispers of the Moon', 'Gabriel Nightshade', 'Fantasy'),
 (3,'Lost in Time', 'Isabella Tempus', 'Science Fiction'),
 (4,'Shadowed Secrets', 'Xavier Enigma', 'Thriller'),
 (5,'Eternal Embrace', 'Seraphina Nightfall', 'Romance'),
 (4,'Chronicles of the Starlight', 'Orion Skywatcher', 'Science Fiction/Fantasy'),
 (2,'Mysteries of the Enchanted Forest', 'Elara Evergreen', 'Fantasy'),
 (2,'A Symphony of Shadows', 'Lucius Nocturne', 'Mystery'),
 (5,'Beyond the Horizon', 'Celeste Aurora', 'Adventure'),
 (1,'The Labyrinth of Dreams', 'Morpheus Dreamweaver', 'Fantasy'),
 (4,'Windswept Whispers', 'Zephyra Gale', 'Romance'),
 (3,'Realm of the Celestial Serpent', 'Draco Stormrider', 'Fantasy'),
 (3,'The Forgotten Alchemy', 'Alaric Alchemist', 'Historical Fiction'),
 (1,'Echoes from Atlantis', 'Atlantia Songweaver', 'Fantasy'),
 (2,'Serpentine Shadows', 'Lilith Nightshade', 'Dark Fantasy');


