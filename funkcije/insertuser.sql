CREATE OR REPLACE FUNCTION public.insertuser(
	userid integer,
	firstname character,
	lastname character,
	gender character,
	userpassword text,
	emailaddress character,
	mobilenumber integer,
	country character,
	address character,
	birthdate date)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
    INSERT INTO tblusers (userid,firstname, lastname, gender, userpassword, emailaddress, mobilenumber, country, address, birthdate) 
VALUES (userid,firstname, lastname, gender, userpassword, emailaddress, mobilenumber, country, address, birthdate);
END

$BODY$;

ALTER FUNCTION public.insertuser(integer, character, character, character, text, character, integer, character, character, date)
    OWNER TO postgres;