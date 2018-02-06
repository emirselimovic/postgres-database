	create table eventsqueue (
	id serial,
	eventid integer,
	userid integer,
    dateofevent date default now (),							   emailaddress character (50),
	firstname character (100),
	friendsuserid integer,
	followersuserid integer)
 
									
