CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  messagesId int auto_increment,
  userId int,
  roomId int,
  messageIndex int,
  primary key(messagesId)  
);

CREATE TABLE users (
  userId int auto_increment,
  userName VARCHAR(40),
  primary key(userId)

);

CREATE TABLE rooms (
  roomId int auto_increment,
  roomName VARCHAR(40) ,
  primary key(roomId)

);

alter table messages add foreign key (roomId) references rooms(roomId);
alter table messages add foreign key (userId) references users(userId);



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

