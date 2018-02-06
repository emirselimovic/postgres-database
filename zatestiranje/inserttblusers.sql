INSERT INTO public.tblusers(
	userid, firstname, lastname, gender, userpassword, emailaddress, mobilenumber, country, address, birthdate)
	VALUES (1, 'Emir', 'Selimovic', 'Male', 'nekipassword', 'emirselimovic74@gmail.com', 061506807, 'BiH', 'Hasana kıkıca', (to_date('1988-10-27', 'YYYY-MM-DD'))),
	(2, 'Lejla', 'Selimovic', 'Female', 'password', 'lejlaselimovic@gmail.com', 061505807, 'BiH', 'Hasana kıkıca', (to_date('1993-01-06', 'YYYY-MM-DD'))),
	(3, 'Zakir', 'Selimovic', 'Male', 'pass', 'zakirselimovic@gmail.com', 061345654, 'BiH', 'Hasana kıkıca', (to_date('1963-5-27', 'YYYY-MM-DD')));
	
	

	
	