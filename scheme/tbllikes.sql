create table tbllikes (
	ID serial primary key,
	Userid integer,
    Friendsuserid integer,
    Firstname character (100),
	Friendsfirstname character (100),										
	Emailaddress character (50),
	Date date default now ()
)								
	
	


	
   
  