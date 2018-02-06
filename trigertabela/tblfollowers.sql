-- Trigger: followersevent

-- DROP TRIGGER followersevent ON public.tblfollowers;

CREATE TRIGGER followersevent
    AFTER INSERT OR DELETE
    ON public.tblfollowers
    FOR EACH ROW
    EXECUTE PROCEDURE public.followersevents();