-- FUNCTION: public.eventsuserhistory()

-- DROP FUNCTION public.eventsuserhistory();

CREATE FUNCTION public.eventsuserhistory()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

BEGIN
 

  IF tg_op = 'INSERT' THEN
     
   INSERT INTO tblusereventshistory(userid, eventid, email, firstname)
     VALUES (new.userid, new.eventid, new.emailaddress, new.firstname);
     
     RETURN new;
  END IF;
  

END

$BODY$;

ALTER FUNCTION public.eventsuserhistory()
    OWNER TO postgres;
