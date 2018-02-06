-- FUNCTION: public.likeevents()

-- DROP FUNCTION public.likeevents();

CREATE FUNCTION public.likeevents()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

declare deletelike integer := 11;
declare insertlike integer := 12;

BEGIN
  IF tg_op = 'DELETE' THEN
  
  INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, friendsuserid)
     VALUES (old.userid, deletelike ,old.emailaddress, old.firstname, old.friendsuserid);
     
     RETURN old;
  END IF;
  IF tg_op = 'INSERT' THEN
     
INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, friendsuserid)
     VALUES (new.userid, insertlike ,new.emailaddress, new.firstname, new.friendsuserid);
     
     RETURN new;
  END IF;
  
 
  
END

$BODY$;

ALTER FUNCTION public.likeevents()
    OWNER TO postgres;
