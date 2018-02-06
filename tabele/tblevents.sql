create table tblevents (
	Eventid serial primary key,
	Eventname character (200),
	Createdate date default now(),
	Operation character (1000)										
	)
	
	