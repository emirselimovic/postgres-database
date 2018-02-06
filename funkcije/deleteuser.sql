-- FUNCTION: public.deleteuser(integer)

-- DROP FUNCTION public.deleteuser(integer);

CREATE OR REPLACE FUNCTION public.deleteuser(
	id integer)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
  delete from tblusers where id = userid;
END

$BODY$;

ALTER FUNCTION public.deleteuser(integer)
    OWNER TO postgres;
