-- FUNCTION: public.insertfollower(integer, integer, character, character, character, character)

-- DROP FUNCTION public.insertfollower(integer, integer, character, character, character, character);

CREATE OR REPLACE FUNCTION public.insertfollower(
	userid integer,
	followersuserid integer,
	firstname character,
	followersfirstname character,
	emailaddress character,
	followersemailaddress character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
INSERT INTO tblfollowers (userid,followersuserid, firstname, followersfirstname, emailaddress, followersemailaddress)
VALUES (userid,followersuserid, firstname, followersfirstname, emailaddress, followersemailaddress);
END

$BODY$;

ALTER FUNCTION public.insertfollower(integer, integer, character, character, character, character)
    OWNER TO postgres;
