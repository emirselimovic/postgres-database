--select id of comment you want to update
--select * from tblcomments


SELECT public.updatecomment(
	1, 
	'<novi komentar'
)
--provjera rezultata
--select * from tblcomments