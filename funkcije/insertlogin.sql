-- FUNCTION: public.insertlogin(integer, character)

-- DROP FUNCTION public.insertlogin(integer, character);

CREATE OR REPLACE FUNCTION public.insertlogin(
	userid integer,
	comment character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
    INSERT INTO tbllogin (userid,comment)
VALUES (userid,comment);
END

$BODY$;

ALTER FUNCTION public.insertlogin(integer, character)
    OWNER TO postgres;
