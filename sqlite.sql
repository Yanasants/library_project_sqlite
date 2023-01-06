CREATE TABLE client (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TINYINT NOT NULL,
    email INTEGER NOT NULL,
    phone_number INTEGER NOT NULL
);

CREATE TABLE rent(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    price MONEY NOT NULL,
    rental_date TEXT NOT NULL,
    return_date TEXT NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY(id_client) REFERENCES client(id),
    FOREIGN KEY(id_book) REFERENCES book(id)
);

CREATE TABLE book (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title TEXT NOT NULL,
    pages_number INTEGER NOT NULL,
    FOREIGN KEY(id_author) REFERENCES client(id),
    FOREIGN KEY(id_book) REFERENCES book(id)
);

CREATE TABLE author (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE publisher (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT NOT NULL
);