-- Trigger: eventsonlike

-- DROP TRIGGER eventsonlike ON public.tbllikes;

CREATE TRIGGER eventsonlike
    AFTER INSERT OR DELETE
    ON public.tbllikes
    FOR EACH ROW
    EXECUTE PROCEDURE public.likeevents();