#刪除
delete from itcast.employee;
#增加
insert into itcast.employee(`id` ,`workno` ,`name` ,`gender` ,`age` ,`idcard` ,`entrydate` ) values(01,'Leve1','Hank',null,null,null,null);
insert into itcast.employee(`id` ,`workno`) values(02,'Ann');
#修改
update itcast.employee set name="Hank",gender="男",age=30,idcard=265134,entrydate='2024-05-14' where workno='leve1';






select * from employee;