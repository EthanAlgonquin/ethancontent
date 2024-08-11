CREATE DATABASE records;

CREATE TABLE users (
	user_id int AUTO_INCREMENT,
	email varchar(255),
	username varchar(255),
	password varchar(255),
	PRIMARY KEY (user_id) 
);

CREATE TABLE songs (
	song_id int AUTO_INCREMENT,
	song_name varchar(255),
	artist varchar(255),
	genre varchar(255),
	liked boolean,
	PRIMARY KEY (song_id)
);
	
CREATE TABLE playlists (
	list_id int AUTO_INCREMENT,
	user_id int,
	list_name varchar(255),
	PRIMARY KEY (list_id) ,
	FOREIGN KEY (user_id) REFERENCES users(user_id)	
);	

CREATE TABLE listed_songs (
	list_id int,
	song_id int,
	PRIMARY KEY (list_id, song_id),
	FOREIGN KEY (list_id) REFERENCES playlists(list_id),
	FOREIGN KEY (song_id) REFERENCES songs(song_id)
);