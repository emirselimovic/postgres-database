-- FUNCTION: public.events()

-- DROP FUNCTION public.events();

CREATE FUNCTION public.events()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

declare deleteeventid integer := 1;
declare updateeventid integer := 2;
declare inserteventid integer := 3;

BEGIN
  IF tg_op = 'DELETE' THEN
  
  INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname)
     VALUES (old.userid, deleteeventid,old.emailaddress, old.firstname);
     
     RETURN old;
  END IF;
  IF tg_op = 'INSERT' THEN
     
  INSERT INTO eventsqueue(userid, eventid,emailaddress, firstname)
     VALUES (new.userid, inserteventid, new.emailaddress, new.firstname);
     
     RETURN new;
  END IF;
  IF tg_op = 'UPDATE' THEN
    
  INSERT INTO eventsqueue(userid, eventid,emailaddress, firstname)
       VALUES (new.userid, updateeventid,new.emailaddress, new.firstname);
     
     RETURN new;
  END IF;
END

$BODY$;

ALTER FUNCTION public.events()
    OWNER TO postgres;
