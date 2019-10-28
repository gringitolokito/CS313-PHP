CREATE TABLE 
(
	userId SERIAL NOT NULL PRIMARY KEY,
	firstName VARCHAR(100) NOT NULL,
	lastName VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	userPassword VARCHAR(100) NOT NULL
);

CREATE TABLE category
(
	categoryId SERIAL NOT NULL PRIMARY KEY,
	categoryName VARCHAR(50) NOT NULL
);

CREATE TABLE public.notes
(
	notesId SERIAL NOT NULL PRIMARY KEY,
	userId INT NOT NULL REFERENCES public.user(userId),
	categoryId INT NOT NULL REFERENCES public.category(categoryId),
	created TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP,
	note_title VARCHAR(50) NOT NULL,
	note_text TEXT NOT NULL
);