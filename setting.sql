Use mysql;
select database();
show databases;
show tables;

select Host,User from user;

grant all on itcast.* to 'HanHan03'@'%';

show grants for 'HanHan03'@'%';

revoke all on itcast.* from 'HanHan03'@'%';