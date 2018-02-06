-- Trigger: friends

-- DROP TRIGGER friends ON public.tblfriends;

CREATE TRIGGER friends
    AFTER INSERT OR DELETE
    ON public.tblfriends
    FOR EACH ROW
    EXECUTE PROCEDURE public.friend();