Create table tblUsers (
	
	Userid serial primary key,
	FirstName character(100)  not null,
	LastName character(100) not null,
	Gender character(10) not null,
	UserPassword text not null,
	EmailAddress character(50) not null unique,
	MobileNumber integer not null,
	Country character(50) not null,
	Address character(300) not null,
	Birthdate date not null,
	CreatedDate  date DEFAULT now(),
	LastChange  date DEFAULT now () )
											
 