-- Trigger: eventsoncomment

-- DROP TRIGGER eventsoncomment ON public.tblcomments;

CREATE TRIGGER eventsoncomment
    AFTER INSERT OR DELETE  
    ON public.tblcomments
    FOR EACH ROW
    EXECUTE PROCEDURE public.commentevents();