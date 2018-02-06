-- FUNCTION: public.insertcomment(integer, integer, character, character, character, character)

-- DROP FUNCTION public.insertcomment(integer, integer, character, character, character, character);

CREATE OR REPLACE FUNCTION public.insertcomment(
	userid integer,
	friendsuserid integer,
	firstname character,
	friendsfirstname character,
	comment character,
	emailaddress character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
INSERT INTO tblcomments (userid, friendsuserid, firstname, friendsfirstname, comment, emailaddress)
VALUES (userid, friendsuserid, firstname, friendsfirstname, comment, emailaddress);
END

$BODY$;

ALTER FUNCTION public.insertcomment(integer, integer, character, character, character, character)
    OWNER TO postgres;
