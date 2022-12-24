CREATE TABLE blacklistedmobs (
	id int primary key,
	guid text not null
);

CREATE TABLE commands (
	id int not null primary key,
	command text not null,
	player text not null,
	args text not null
);

CREATE TABLE hotspots (
	id int not null primary key,
	zone text not null,
	description text not null,
	faction text not null,
	waypoints text not null,
	innkeeperid int,
	repairvendorid int,
	ammovendorid int,
	minimumlevel int not null,
	travelpathid int,
	safeforgrinding int not null
);

CREATE TABLE hotspotsv2 (
	id int primary key,
	polygon text not null,
	zone text not null,
	description text not null,
	faction text not null,
	minimumlevel int not null,
	travelpathid int,
	townid int not null
);

CREATE TABLE kills (
	playerlevel int primary key,
	playername text not null,
	playerclass text not null,
	enemyname text not null,
	enemylevel int not null,
	healthpercentlost int not null,
	combatduration int not null
);

CREATE TABLE npcs (
	id int primary key,
	name text not null,
	isinnkeeper int not null,
	sellsammo int not null,
	repairs int not null,
	quest int not null,
	horde int not null,
	alliance int not null,
	positionx double not null,
	positiony double not null,
	positionz double not null,
	zone text not null
);

CREATE TABLE questcompletions (
	id int primary key,
	playerguid text not null,
	questid int not null
);

CREATE TABLE questhubs (
	id int primary key,
	name text not null
);

CREATE TABLE questobjectives (
	id int primary key,
	type text not null,
	name text not null,
	source text not null,
	quantity int not null,
	questid int not null,
	objectid int not null
);

CREATE TABLE questprerequisites (
	id int primary key,
	parentid int not null,
	childid int not null
);

CREATE TABLE quests (
	id int primary key,
	name text not null,
	questhubid int not null,
	hotspotid int,
	startnpcid int not null,
	endnpcid int not null,
	requiredlevel int not null,
	class text not null,
	questid int not null
);

CREATE TABLE reportsignatures (
	id int primary key,
	player text not null,
	commandid int not null
);

create table towns (
	id int not null,
	innkeeperid int,
	repairvendorid int,
	ammovendorid int,
	name text
);

CREATE TABLE travelpaths (
	id int not null,
	name text not null,
	waypoints text not null
);