-- FUNCTION: public.insertfriend(integer, integer, character, character, character, character)

-- DROP FUNCTION public.insertfriend(integer, integer, character, character, character, character);

CREATE OR REPLACE FUNCTION public.insertfriend(
	userid integer,
	friendsuserid integer,
	firstname character,
	friendsfirstname character,
	emailaddress character,
	friendsemailaddress character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
INSERT INTO tblfriends (userid, friendsuserid, firstname, friendsfirstname, emailaddress, friendsemailaddress)
VALUES (userid, friendsuserid, firstname, friendsfirstname, emailaddress, friendsemailaddress);
END

$BODY$;

ALTER FUNCTION public.insertfriend(integer, integer, character, character, character, character)
    OWNER TO postgres;
