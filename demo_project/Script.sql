
-- Sql Script for Static Value For Senior police officer and Police Inspector  
drop database crime_reporting_system;
create DATABASE crime_reporting_system;
use crime_reporting_system;


insert into admin values(1,"Roy Jason","Senior Police officer");
insert into user values(10,1,"admin","ROLE_ADMIN","admin",1,null,null);


insert into police values(1,"Manohar Parikar");
insert into user values(20,1,"police","ROLE_POLICE","police",null,null,1);








