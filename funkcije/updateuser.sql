-- FUNCTION: public.updateuser(integer, character, character, character, text, character, integer, character, character, date)

-- DROP FUNCTION public.updateuser(integer, character, character, character, text, character, integer, character, character, date);

CREATE OR REPLACE FUNCTION public.updateuser(
	id integer,
	userfirstname character,
	userlastname character,
	usergender character,
	password text,
	useremailaddress character,
	usermobilenumber integer,
	usercountry character,
	useraddress character,
	userbirthdate date)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
 UPDATE tblusers
       SET firstname=userfirstname, lastname=userlastname, gender=usergender, userpassword=password, emailaddress=useremailaddress, mobilenumber=usermobilenumber, country=usercountry, address=useraddress, birthdate=userbirthdate,lastchange=now()
	where userid = id;
END;

$BODY$;

ALTER FUNCTION public.updateuser(integer, character, character, character, text, character, integer, character, character, date)
    OWNER TO postgres;
