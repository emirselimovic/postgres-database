-- FUNCTION: public.deletelike(integer)

-- DROP FUNCTION public.deletelike(integer);

CREATE OR REPLACE FUNCTION public.deletelike(
	likeid integer)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
  delete from tbllikes where  id= likeid;
END

$BODY$;

ALTER FUNCTION public.deletelike(integer)
    OWNER TO postgres;
