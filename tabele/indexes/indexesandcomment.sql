	  CREATE INDEX index_tblcomments
   ON tblcomments (userid,friendsuserid);
   
     CREATE INDEX index_tblcomments_comment
   ON tblcomments (comment);

   comment on column tblcomments.comment is 'The comment that user has posted';


   comment on column tblevents.operation is 'Description of event';	
	  CREATE INDEX index_event ON tblevents (eventid,eventname);

	  comment on column tblfollowers.Followersfirstname is 'The first name of user that ıs being fololowed';
	comment on column tblfollowers.Followersuserid is 'The id of user that ıs being fololowed';

	  CREATE INDEX index_tblfollowers
   ON tblfollowers (Followersuserid,userid);

   	comment on column tblfriends.friendsfirstname is 'The first name of friend that user has made';
	comment on column tblfriends.friendsuserid is 'The id of friend that user has made';

	  CREATE INDEX index_tblfriends
   ON tblfriends (userid,friendsuserid);

     CREATE INDEX index_tbllikes
   ON tbllikes (userid,friendsuserid);

   comment on column tbllogin.comment is 'Describes was the loging successful';

	  CREATE INDEX index_tbllogın
   ON tbllogin (userid);



	comment on column tblusereventshistory.userid is 'Userid fron tblUsers';
	comment on column tblusereventshistory.Eventid is 'Eventid from tblEvents';	
	  CREATE INDEX index_userhistory
   ON tblusereventshistory (userid);

     CREATE UNIQUE INDEX index_email
   on tblUsers (EmailAddress);
   
   CREATE INDEX index_user
   ON tblUsers (Userid, FirstName,LastName);
   
   comment on column tblusers.userid is 'Automaticly genereted userid';
   comment on column tblusers.emailaddress is 'Users email address is unique in system';