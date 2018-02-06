-- FUNCTION: public.friendsevents()

-- DROP FUNCTION public.friendsevents();

CREATE FUNCTION public.friendsevents()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

declare deletefriend integer := 5;
declare insertfriend integer := 4;

BEGIN
  IF tg_op = 'DELETE' THEN
  
  INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, friendsuserid)
     VALUES (old.userid, insertfriend ,old.emailaddress, old.firstname, old.friendsuserid);
     
     RETURN old;
  END IF;
  IF tg_op = 'INSERT' THEN
     
INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, friendsuserid)
     VALUES (new.userid, deletefriend ,new.emailaddress, new.firstname, new.friendsuserid);
     
     RETURN new;
  END IF;
  
END

$BODY$;

ALTER FUNCTION public.friendsevents()
    OWNER TO postgres;
