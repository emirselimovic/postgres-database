-- Trigger: eventsontblusers

-- DROP TRIGGER eventsontblusers ON public.tblusers;

CREATE TRIGGER eventsontblusers
    AFTER INSERT OR DELETE OR UPDATE 
    ON public.tblusers
    FOR EACH ROW
    EXECUTE PROCEDURE public.events();