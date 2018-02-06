-- FUNCTION: public.followersevents()

-- DROP FUNCTION public.followersevents();

CREATE FUNCTION public.followersevents()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

declare deletefollower integer := 6;
declare insertfollower integer := 7;

BEGIN
  IF tg_op = 'DELETE' THEN
  
  INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, followersuserid)
     VALUES (old.userid, insertfollower ,old.emailaddress, old.firstname, old.followersuserid);
     
     RETURN old;
  END IF;
  IF tg_op = 'INSERT' THEN
     
INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, followersuserid)
     VALUES (new.userid, deletefollower,new.emailaddress, new.firstname, new.followersuserid);
     
     RETURN new;
  END IF;
  
END

$BODY$;

ALTER FUNCTION public.followersevents()
    OWNER TO postgres;
