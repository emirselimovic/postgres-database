-- Trigger: friendsevent

-- DROP TRIGGER friendsevent ON public.tblfriends;

CREATE TRIGGER friendsevent
    AFTER INSERT OR DELETE
    ON public.tblfriends
    FOR EACH ROW
    EXECUTE PROCEDURE public.friendsevents();