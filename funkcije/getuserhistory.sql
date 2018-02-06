-- FUNCTION: public.getusershistory(integer)

-- DROP FUNCTION public.getusershistory(integer);

CREATE OR REPLACE FUNCTION public.getusershistory(
	iduser integer)
    RETURNS TABLE(sequenceid integer, usersid integer, event integer, useremail character, userfirstname character) 
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
    ROWS 1000
AS $BODY$

BEGIN
    RETURN QUERY SELECT  id,userid, eventid, email, firstname
        FROM tblusereventshistory WHERE userid = iduser;
END;

$BODY$;

ALTER FUNCTION public.getusershistory(integer)
    OWNER TO postgres;
