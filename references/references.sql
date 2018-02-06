ALTER TABLE public.tblcomments
    ADD CONSTRAINT tblcomments_userid_fkey FOREIGN KEY (userid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE public.tblcomments
    ADD CONSTRAINT tblcomments_friendsuserid_fkey FOREIGN KEY (friendsuserid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE public.tblfollowers
    ADD CONSTRAINT tblfollowers_followersuserid_fkey FOREIGN KEY (followersuserid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;



ALTER TABLE public.tblfollowers
    ADD CONSTRAINT tblfollowers_userid_fkey FOREIGN KEY (userid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.tblfriends
    ADD CONSTRAINT tblfriends_friendsuserid_fkey FOREIGN KEY (friendsuserid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


    ALTER TABLE public.tblfriends
    ADD CONSTRAINT tblfriends_userid_fkey FOREIGN KEY (userid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


    ALTER TABLE public.tbllikes
    ADD CONSTRAINT tbllikes_friendsuserid_fkey FOREIGN KEY (friendsuserid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

    ALTER TABLE public.tbllikes
    ADD CONSTRAINT tbllikes_userid_fkey FOREIGN KEY (userid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

    ALTER TABLE public.tbllogin
    ADD CONSTRAINT tbllogin_userid_fkey FOREIGN KEY (userid)
    REFERENCES public.tblusers (userid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;



    ALTER TABLE public.tblusereventshistory
    ADD CONSTRAINT tblusereventshistory_eventid_fkey FOREIGN KEY (eventid)
    REFERENCES public.tblevents (eventid) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
