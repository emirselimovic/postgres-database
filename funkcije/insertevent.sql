-- FUNCTION: public.insertevent(character, character)

-- DROP FUNCTION public.insertevent(character, character);

CREATE OR REPLACE FUNCTION public.insertevent(
	eventname character,
	operation character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
    INSERT INTO tblevents (eventname,character) 
VALUES (eventname,character);
END

$BODY$;

ALTER FUNCTION public.insertevent(character, character)
    OWNER TO postgres;
