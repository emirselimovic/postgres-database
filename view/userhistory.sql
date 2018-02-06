create view public.usershistory
	as
select ueh.userid,u.firstname,u.lastname,ueh.eventid,e.eventname,e.operation
from tblusereventshistory as ueh 
inner join tblusers u on ueh.userid = u.userid
inner join tblevents e on e.eventid = ueh.eventid


