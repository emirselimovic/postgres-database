	create table tblfollowers (
	ID serial primary key,
	Userid integer,
    Followersuserid integer,
    Firstname character (100),
	Followersfirstname character (100),
	Emailaddress character (50),
	Followersemailaddress character (50),										
	Date date default now ())