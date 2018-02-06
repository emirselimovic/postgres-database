	create table tblusereventshistory (
	id serial primary key,
	userid integer,
	Eventid integer ,
	firstname character (100),
    email character (100),										
	Dateofevent date default now() )
	
	