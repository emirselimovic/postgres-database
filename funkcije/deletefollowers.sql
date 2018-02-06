-- FUNCTION: public.deletefollowers(integer)

-- DROP FUNCTION public.deletefollowers(integer);

CREATE OR REPLACE FUNCTION public.deletefollowers(
	followerid integer)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
  delete from tblfollowers where  id= followerid;
END

$BODY$;

ALTER FUNCTION public.deletefollowers(integer)
    OWNER TO postgres;
