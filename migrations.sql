psql

CREATE DATABASE to_do_app;

\c to_do_app;

CREATE TABLE to_dos (id SERIAL PRIMARY KEY, task TEXT, complete BOOLEAN, due_date TIMESTAMP);
