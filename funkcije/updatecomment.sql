-- FUNCTION: public.updatecomment(integer, character)

-- DROP FUNCTION public.updatecomment(integer, character);

CREATE OR REPLACE FUNCTION public.updatecomment(
	commentid integer,
	newcomment character)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
 UPDATE tblcomments
       SET comment = newcomment
	where commentid = id;
END;

$BODY$;

ALTER FUNCTION public.updatecomment(integer, character)
    OWNER TO postgres;
