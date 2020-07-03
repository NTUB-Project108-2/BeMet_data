create database BeMet;
use BeMet;
create table user_information(
user_no int identity primary key,
account varchar(100),
password varchar(64),
name nvarchar(100),
gender	char(2),
mail	varchar(100),
profession	nvarchar(100),
bluetooth	varchar(17),
create_date datetime,
modify_date datetime
)
create table user_customization(
user_customization_no	int	identity primary key,
user_no	int	references user_information(user_no)	,
column_name	nvarchar(100),
content	nvarchar(1000),
create_date datetime,
modify_date datetime
)
create table friend(
friend_no	int	identity primary key,
matchmaker	int	references user_information(user_no),	
friend	int	references user_information(user_no),
remark nvarchar(2500),
create_date datetime,
modify_date datetime
)
create table groups(
group_no	int	identity	primary key,
name	nvarchar(100),		
user_no	int	references user_information(user_no),
create_date datetime,
modify_date datetime	
)
create table friend_group(
friendGroup_no	int	identity primary key,
group_no	int	references groups(group_no),	
friend_no	int	references friend(friend_no),
create_date datetime,
modify_date datetime	
)
create table friend_customization(
friend_customization_no	int	identity	primary key,
name	nvarchar(100),
friend_no	int	references friend(friend_no),
create_date datetime,
modify_date datetime	
)
create table friend_label(
friend_label_no	int	identity primary key,
content	nvarchar(50),
friend_customization_no	int	references friend_customization(friend_customization_no),
create_date datetime,
modify_date datetime
)
create table friend_remark(
friendRemarks_no	int	identity primary key,
friendLabel_no	int	references friend_label(friend_label_no),
friend_customization_no	int	references friend_customization(friend_customization_no),	
friend_no	int	references friend(friend_no),
create_date datetime,
modify_date datetime	
)
create table timeline_properties(
timeline_properties_no	int	identity primary key,
name	nvarchar(100),
create_date datetime,
modify_date datetime
)
create table timeline(
timeline_no	int	identity primary key,
place	nvarchar(100),
title	nvarchar(100),		
remark	nvarchar(2500),		
timeline_properties_no	int	references timeline_properties(timeline_properties_no),
color varchar(7),
create_date datetime,
modify_date datetime
)

create table activity_label(
activityLabel_no	int	identity	primary key,
activity_no	int	references timeline(timeline_no),	
content	nvarchar(100),
create_date datetime,
modify_date datetime		
)

create table activity_remind(
activity_remind_no	int	identity primary key,
time datetime,		
activity_no	int	references timeline(timeline_no),
create_date datetime,
modify_date datetime	
)
create table activity_invite(
activityInvite_no	int	identity primary key,
user_no	int	references user_information(user_no),	
activity_no	int	references timeline(timeline_no),
create_date datetime,
modify_date datetime	
)
create table problem_report(
problem_report_no	int	identity primary key,
content	nvarchar(3000),
user_no	int	references user_information(user_no),
create_date datetime,
modify_date datetime
)