-- FUNCTION: public.commentevents()

-- DROP FUNCTION public.commentevents();

CREATE FUNCTION public.commentevents()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

declare deletecomment integer := 8;
declare updatecomment integer := 9;
declare insertcomment integer := 10;

BEGIN
  IF tg_op = 'DELETE' THEN
  
  INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, friendsuserid)
     VALUES (old.userid, deletecomment ,old.emailaddress, old.firstname, old.friendsuserid);
     
     RETURN old;
  END IF;
  IF tg_op = 'INSERT' THEN
     
INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, friendsuserid)
     VALUES (new.userid, insertcomment ,new.emailaddress, new.firstname, new.friendsuserid);
     
     RETURN new;
  END IF;
  
  IF tg_op = 'UPDATE' THEN
    
 INSERT INTO eventsqueue(userid, eventid, emailaddress, firstname, friendsuserid)
     VALUES (new.userid, updatecomment ,new.emailaddress, new.firstname, new.friendsuserid);
     
     RETURN new;
  END IF;
  
END

$BODY$;

ALTER FUNCTION public.commentevents()
    OWNER TO postgres;
