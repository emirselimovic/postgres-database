-- FUNCTION: public.eventsuserhistoryjson()

-- DROP FUNCTION public.eventsuserhistoryjson();

CREATE FUNCTION public.eventsuserhistoryjson()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF 
AS $BODY$

BEGIN
 CREATE TEMP TABLE neka (
  userid integer,
  eventid integer,
  firstname character(500),
  email character(500),
dateofevent date default now());
IF tg_op = 'INSERT' THEN
  
  insert into neka (userid,eventid,firstname,email)
  values (new.userid,new.eventid,new.firstname,new.email);
  
 INSERT INTO newschema.tblanalysis(file)
   select row_to_json(neka) from neka;
    drop table neka;
   Return new;
   
  
  END IF;
  

END

$BODY$;

ALTER FUNCTION public.eventsuserhistoryjson()
    OWNER TO postgres;
