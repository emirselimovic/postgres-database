-- FUNCTION: public.deletefriend(integer)

-- DROP FUNCTION public.deletefriend(integer);

CREATE OR REPLACE FUNCTION public.deletefriend(
	friendshipid integer)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
  delete from tblfriends where  id= friendshipid;
END

$BODY$;

ALTER FUNCTION public.deletefriend(integer)
    OWNER TO postgres;
