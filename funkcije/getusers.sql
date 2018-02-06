-- FUNCTION: public.getusers(integer)

-- DROP FUNCTION public.getusers(integer);

CREATE OR REPLACE FUNCTION public.getusers(
	id integer)
    RETURNS TABLE(useridnum integer, userfirstname character, userlastname character, usergender character, password text, useremailaddress character, usermobilenumber integer, usercountry character, useraddress character, userbirthdate date, usercreateddate date, userlastchange date) 
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
    ROWS 1000
AS $BODY$

BEGIN
    RETURN QUERY SELECT userid, firstname, lastname, gender, userpassword, emailaddress, mobilenumber, country, address, birthdate, createddate, lastchange
        FROM tblusers WHERE userid = id;
END;

$BODY$;

ALTER FUNCTION public.getusers(integer)
    OWNER TO postgres;
