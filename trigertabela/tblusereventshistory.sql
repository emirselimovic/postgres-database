-- Trigger: eventsuserhistoryjsona

-- DROP TRIGGER eventsuserhistoryjsona ON public.tblusereventshistory;

CREATE TRIGGER eventsuserhistoryjsona
    AFTER INSERT
    ON public.tblusereventshistory
    FOR EACH ROW
    EXECUTE PROCEDURE public.eventsuserhistoryjson();