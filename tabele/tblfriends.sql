create table tblfriends (
	ID serial primary key,
	Userid integer,
    FriendsUserid integer,
    Firstname character (100),
	Friendsfirstname character (100),
	Emailaddress character (50),
	Friendsemailaddress character (50),						
	Date date default now ())								
	
	
