create database starlink 

create table users (
	userId int primary key,
	userName varchar(200) not null,
	email varchar(100) not null,
	regionId int foreign key references regions(regionId)
)

create table plans (
	planId int primary key,
	planName varchar(200) not null,
	planPrice decimal not null
)

create table hardware (
	hardwareId int primary key,
	userId int foreign key references users(userID),
	level varchar(100) not null,
	price decimal not null
)

create table subscriptions (
	subscriptionId int primary key,
	userId int foreign key references users(userId),
	planId int foreign key references plans(planId),
	hardwareId int foreign key references hardware(hardwareId),
	subscriptionState varchar(50) check(subscriptionState = 'active' or subscriptionState = 'inactive') default('inactive')
)


create table satelites (
	sateliteId int primary key,
	sateliteName varchar(100) not null
)

create table regions (
	regionId int primary key,
	regionName varchar(150) not null,
	sateliteId int foreign key references satelites(sateliteId)
)

