-- Trigger: eventstblusereventshistory

-- DROP TRIGGER eventstblusereventshistory ON public.eventsqueue;

CREATE TRIGGER eventstblusereventshistory
    AFTER INSERT 
    ON public.eventsqueue
    FOR EACH ROW
    EXECUTE PROCEDURE public.eventsuserhistory();