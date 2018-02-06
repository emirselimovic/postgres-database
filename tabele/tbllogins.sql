
	create table tbllogin (
	ID serial primary key,
	Userid integer,
	Date date default now (),
	Comment character (1000) )
	
	
	