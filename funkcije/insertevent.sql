-- FUNCTION: public.insertevent(integer, character, character)

-- DROP FUNCTION public.insertevent(integer, character, character);

CREATE OR REPLACE FUNCTION public.insertevent(
	eventid integer,
	eventname character,
	operation character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
    INSERT INTO tblevents (eventid,eventname,operation) 
VALUES (eventid,eventname,operation);
END

$BODY$;

ALTER FUNCTION public.insertevent(integer, character, character)
    OWNER TO postgres;
