-- FUNCTION: public.friend()

-- DROP FUNCTION public.friend();

CREATE FUNCTION public.friend()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

BEGIN
  IF tg_op = 'DELETE' THEN
  
  delete from tblfollowers where old.userid = userid and old.friendsuserid = followersuserid;
     
     RETURN old;
  END IF;
  IF tg_op = 'INSERT' THEN
     
  INSERT INTO tblfollowers (userid, followersuserid, firstname,followersfirstname, emailaddress, followersemailaddress)
     VALUES (new.userid, new.friendsuserid, new.firstname,new.friendsfirstname, new.emailaddress, new.friendsemailaddress);
     
     RETURN new;
  END IF;

END

$BODY$;

ALTER FUNCTION public.friend()
    OWNER TO postgres;
