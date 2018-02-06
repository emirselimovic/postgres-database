From postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB docker
#Directory paths for including new scripts in docker file
#------------------------------------------------------------------------------------
#db_scripts/dbobjects/${NEED_SCHEMA_NAME}/funtions/
#db_scripts/dbobjects/${NEED_SCHEMA_NAME}/sequences/
#db_scripts/dbobjects/${NEED_SCHEMA_NAME}/tables/
#db_scripts/dbobjects/${NEED_SCHEMA_NAME}/triggers/
#db_scripts/dbobjects/${NEED_SCHEMA_NAME}/views/
#db_scripts/schemas
#data/static_data
#data/data_for_testing
#------------------------------------------------------------------------------------
#IMPORTANT after adding /docker-entrypoint-initdb.d/ part of path you have to set order of script execution by number
#example
#/docker-entrypoint-initdb.d/1${script_name}.sql
#/docker-entrypoint-initdb.d/2${script_name}.sql
#Incuding *.sql scripts
#------------------------------------------------------------------------------------
#Creating schemas
ADD scheme/newschema.sql /docker-entrypoint-initdb.d/0newschema.sql


#Creating tables

ADD tabele/tblusers.sql /docker-entrypoint-initdb.d/0tblusers.sql
ADD tabele/tblevents.sql /docker-entrypoint-initdb.d/0tblevents.sql
ADD tabele/tblanalysis.sql /docker-entrypoint-initdb.d/0tblanalysis.sql
ADD tabele/tblcomments.sql /docker-entrypoint-initdb.d/0tblcomments.sql
ADD tabele/eventsqueue.sql /docker-entrypoint-initdb.d/0eventsqueue.sql
ADD tabele/tblfollowers.sql /docker-entrypoint-initdb.d/0tblfollowers.sql
ADD tabele/tblfriends.sql /docker-entrypoint-initdb.d/0tblfriends.sql
ADD tabele/tbllogins.sql /docker-entrypoint-initdb.d/0tbllogins.sql
ADD tabele/tblusereventshistory.sql /docker-entrypoint-initdb.d/0tblusereventshistory.sql
ADD tabele/tbllikes.sql /docker-entrypoint-initdb.d/0tbllikes.sql

#Creating functions

ADD funkcije/deletecomment.sql /docker-entrypoint-initdb.d/1deletecomment.sql
ADD funkcije/deletefollowers.sql /docker-entrypoint-initdb.d/2deletefollowers.sql
ADD funkcije/deletefriends.sql /docker-entrypoint-initdb.d/3deletefriends.sql
ADD funkcije/deletelike.sql /docker-entrypoint-initdb.d/4deletelike.sql
ADD funkcije/deleteuser.sql /docker-entrypoint-initdb.d/5deleteuser.sql
ADD funkcije/getuserhistory.sql /docker-entrypoint-initdb.d/6getuserhistory.sql
ADD funkcije/getusers.sql /docker-entrypoint-initdb.d/7getusers.sql
ADD funkcije/insertcomment.sql /docker-entrypoint-initdb.d/8insertcomment.sql
ADD funkcije/insertevent.sql /docker-entrypoint-initdb.d/9insertevent.sql
ADD funkcije/insertfollower.sql /docker-entrypoint-initdb.d/10insertfollower.sql
ADD funkcije/insertfriend.sql /docker-entrypoint-initdb.d/11insertfriend.sql
ADD funkcije/insertlike.sql /docker-entrypoint-initdb.d/12insertlike.sql
ADD funkcije/insertlogin.sql /docker-entrypoint-initdb.d/13insertlogin.sql
ADD funkcije/insertuser.sql /docker-entrypoint-initdb.d/14insertuser.sql
ADD funkcije/updatecomment.sql /docker-entrypoint-initdb.d/15updatecomment.sql
ADD funkcije/updateuser.sql /docker-entrypoint-initdb.d/16updateuser.sql

#alter table
ADD references/references.sql /docker-entrypoint-initdb.d/1references.sql

#triger funkcije
ADD trigerfunkcije/commentevents.sql /docker-entrypoint-initdb.d/20commentevents.sql
ADD trigerfunkcije/events.sql /docker-entrypoint-initdb.d/21events.sql
ADD trigerfunkcije/eventsuserhistoryjson.sql /docker-entrypoint-initdb.d/23eventsuserhistoryjson.sql
ADD trigerfunkcije/eventuserhistory.sql /docker-entrypoint-initdb.d/24eventuserhistory.sql
ADD trigerfunkcije/followerevents.sql /docker-entrypoint-initdb.d/25followerevents.sql
ADD trigerfunkcije/friend.sql /docker-entrypoint-initdb.d/26friend.sql
ADD trigerfunkcije/friendsevents.sql /docker-entrypoint-initdb.d/26friendsevents.sql
ADD trigerfunkcije/likeevents.sql /docker-entrypoint-initdb.d/27likeevents.sql

#triger tabela
ADD trigertabela/tblcomments.sql /docker-entrypoint-initdb.d/28tblcomments.sql
ADD trigertabela/tbleventsqueue.sql /docker-entrypoint-initdb.d/29tbleventsqueue.sql
ADD trigertabela/tblfollowers.sql /docker-entrypoint-initdb.d/30tblfollowers.sql
ADD trigertabela/tblfriend.sql /docker-entrypoint-initdb.d/31tblfriend.sql
ADD trigertabela/tblfriendsevents.sql /docker-entrypoint-initdb.d/32tblfriendsevents.sql
ADD trigertabela/tbllikes.sql /docker-entrypoint-initdb.d/33tbllikes.sql
ADD trigertabela/tblusereventshistory.sql /docker-entrypoint-initdb.d/34tblusereventshistory.sql
ADD trigertabela/tblusers.sql /docker-entrypoint-initdb.d/35tblusers.sql
#view tabela
ADD view/userhistory.sql /docker-entrypoint-initdb.d/36userhistory.sql
#indexes and comments tabela
ADD tabele/indexes/indexesandcomment.sql /docker-entrypoint-initdb.d/37indexesandcomment.sql
#add data
ADD zatestiranje/events.sql /docker-entrypoint-initdb.d/38events.sql
ADD zatestiranje/inserttblusers.sql /docker-entrypoint-initdb.d/39inserttblusers.sql
ADD zatestiranje/insertlogin.sql /docker-entrypoint-initdb.d/40insertlogin.sql
ADD zatestiranje/inserttblfollowers.sql /docker-entrypoint-initdb.d/41inserttblfollowers.sql
ADD zatestiranje/inserttblfriends.sql /docker-entrypoint-initdb.d/42inserttblfriends.sql
ADD zatestiranje/tblcomment.sql /docker-entrypoint-initdb.d/43tblcomment.sql
ADD zatestiranje/tbllikes.sql /docker-entrypoint-initdb.d/44tbllikes.sql


















