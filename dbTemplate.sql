create database moodmap if not exists;
use moodmap;

create table mooders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    last_coords VARCHAR(255) NOT NULL,
    mood_id int references moods(id)
);

create table moods(
    id INT AUTO_INCREMENT PRIMARY KEY,
    label varchar(200),
    description VARCHAR(255) NOT NULL
);

create table lang(
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(200),
);

create table trans_l(
    id INT AUTO_INCREMENT PRIMARY KEY,
    lang_id INT REFERENCES lang(id),
    translation VARCHAR(255) NOT NULL,
    text_id varchar(255) not null
);