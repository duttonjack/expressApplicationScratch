DROP TABLE IF EXISTS books;

CREATE TABLE books (
    BookID serial PRIMARY KEY NOT NULL,
    title text,
    author text,
    genre text
);

INSERT INTO books (title, author, genre) VALUES ('The Silent Echo', 'Alexandra Quinn', 'Alexandra Quinn');
INSERT INTO books (title, author, genre) VALUES ('Whispers of the Moon', 'Gabriel Nightshade', 'Fantasy');
INSERT INTO books (title, author, genre) VALUES ('Lost in Time', 'Isabella Tempus', 'Science Fiction');
INSERT INTO books (title, author, genre) VALUES ('Shadowed Secrets', 'Xavier Enigma', 'Thriller');
INSERT INTO books (title, author, genre) VALUES ('Eternal Embrace', 'Seraphina Nightfall', 'Romance');
INSERT INTO books (title, author, genre) VALUES ('Chronicles of the Starlight', 'Orion Skywatcher', 'Science Fiction/Fantasy');
INSERT INTO books (title, author, genre) VALUES ('Mysteries of the Enchanted Forest', 'Elara Evergreen', 'Fantasy');
INSERT INTO books (title, author, genre) VALUES ('A Symphony of Shadows', 'Lucius Nocturne', 'Mystery');
INSERT INTO books (title, author, genre) VALUES ('Beyond the Horizon', 'Celeste Aurora', 'Adventure');
INSERT INTO books (title, author, genre) VALUES ('The Labyrinth of Dreams', 'Morpheus Dreamweaver', 'Fantasy');
INSERT INTO books (title, author, genre) VALUES ('Windswept Whispers', 'Zephyra Gale', 'Romance');
INSERT INTO books (title, author, genre) VALUES ('Realm of the Celestial Serpent', 'Draco Stormrider', 'Fantasy');
INSERT INTO books (title, author, genre) VALUES ('The Forgotten Alchemy', 'Alaric Alchemist', 'Historical Fiction');
INSERT INTO books (title, author, genre) VALUES ('Echoes from Atlantis', 'Atlantia Songweaver', 'Fantasy');
INSERT INTO books (title, author, genre) VALUES ('Serpentine Shadows', 'Lilith Nightshade', 'Dark Fantasy');


