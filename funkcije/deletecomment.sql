-- FUNCTION: public.deletecomment(integer)

-- DROP FUNCTION public.deletecomment(integer);

CREATE OR REPLACE FUNCTION public.deletecomment(
	commentid integer)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
  delete from tblcomments where  id= commentid;
END

$BODY$;

ALTER FUNCTION public.deletecomment(integer)
    OWNER TO postgres;
