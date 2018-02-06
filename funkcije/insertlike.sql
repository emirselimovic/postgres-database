-- FUNCTION: public.insertlike(integer, integer, character, character, character)

-- DROP FUNCTION public.insertlike(integer, integer, character, character, character);

CREATE OR REPLACE FUNCTION public.insertlike(
	userid integer,
	friendsuserid integer,
	firstname character,
	friendsfirstname character,
	emailaddress character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
INSERT INTO tbllikes(userid, friendsuserid, firstname, friendsfirstname,  emailaddress)
VALUES (userid, friendsuserid, firstname, friendsfirstname, emailaddress);
END

$BODY$;

ALTER FUNCTION public.insertlike(integer, integer, character, character, character)
    OWNER TO postgres;
