CREATE TABLE CARRIERS (
    cid varchar(7) PRIMARY KEY,
    name varchar(83));

CREATE TABLE MONTHS (
    mid int PRIMARY KEY, 
    month varchar(9));

CREATE TABLE WEEKDAYS (
    did int PRIMARY KEY, 
    day_of_week varchar(9));

CREATE TABLE FLIGHTS (fid int PRIMARY KEY, 
         month_id int references MONTHS(mid),  
         day_of_month int,
         day_of_week_id int references WEEKDAYS(did),
         carrier_id varchar(7) references CARRIERS(cid),
         flight_num int,
         origin_city varchar(34),
         origin_state varchar(47), 
         dest_city varchar(34), 
         dest_state varchar(46), 
         departure_delay int,
         taxi_out int,
         arrival_delay int,
         canceled int,
         actual_time int,
         distance int,
         capacity int, 
         price int);

PRAGMA foreign_keys=ON;
