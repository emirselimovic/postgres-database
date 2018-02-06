	create table tblcomments (
	ID serial primary key,
	Userid integer,
    Friendsuserid integer,
    Firstname character (100),
	Friendsfirstname character (100),										
	Comment character (1000),
	Emailaddress character (50),
	Date date default now ())								
	
	
	