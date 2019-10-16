Hasanain Alsabonchi

-- 1. List the names of the top-level (i.e. parent_id is null) files and folders of the user cysun. 
-- The results should list the folders first, and then the files

select f.name  from files as f,users as u 
    where u.id=f.owner_id 
    and u.name='cysun' 
    and f.parent_id is null
    order by is_folder Desc 


-- or
select  name  from files    where parent_id IS  NULL and owner_id=1 and is_folder=1 
UNION select  name  from files    where parent_id IS  NULL and owner_id=1 and is_folder=0

-- 2. List the names of the files and folders in the folder with id=8.

select  f.name ,f1.name  from files as f  inner join  files as f1 on    f1.parent_id=f.id where f.id=8 
- or


-- 3. Find the name of the parent folder of the file with id=14.
-- select name from  files  where  id in(select parent_id from  files where id=14)
 select f2.name from  files f1 ,files f2 
 where  f1.id=14  and f2.id=f1.parent_id


 select f1.id,f1.name,f2.name ,f2.id from files f1 
 inner join files f2
  on 
 f1.id=f2.parent_id  
 and f2.id=14

-- 4. List the names of all the empty folders.
select f1.name from  files f1 left join files f2
on  f1.id= f2.parent_id   where f1.is_folder=1 and f2.parent_id is null;



select f1.id,  f1.name , f2.name
 from files f1 
 left  join files f2
  on 
 f1.id =f2.parent_id  where f1.is_folder=1 and f2.name is null



-- 5.Find the number of files (excluding folders) owned by user jdoe.
 select  count(f.name) as noOFproj from  files  f, users  u where  u.id=f.owner_id  and u.name='jdoe' and f.is_folder=0
-- or
  select u.name ,count(f.id) from files  f inner join users u on u.id=f.owner_id  where u.name='jdoe' and f.is_folder=0  group by u.name
select u.name ,count(f.owner_id) from files f inner join users u on f.owner_id=u.id where u.name='john' and f.is_folder=1


6. Insert a new folder CS1222 owned by user with id=1 into the folder with id=2.
            insert into files values(16,'CS1222',1,2,1);

-- 7. Change the name of the folder Pictures to Images 
 -- (assuming there is only one fo  lder whose name is Pictures).

  INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);


            UPDATE files
            SET name = 'Images'
            WHERE id = 12;

-- 8. Delete all the files (i.e. not folders) under the folder with id=13.
    delete  from files  where files.parent_id=13 and files.is_folder=0

-- 9 (Extra Credit +10). List the names of the folder owned by user cysun, and for each folder, the number of
--  files and folders in the folder (or 0 for empty folders).

  -- Mustafa Solutions
-- select f1.name,count(f2.parent_id) from users u, files f1 left outer join  files f2 on (f1.id=f2.parent_id or f2.parent_id is null )
--   where u.id=f1.owner_id and u.name='cysun' and f1.is_folder=1 and f1.id= f2.parent_id
-- group by f1.name;

SELECT f1.name ,count(f2.name)
FROM `files`  f1 left join files f2 on f1.id=f2.parent_id where  f1.owner_id=1  and f1.is_folder=1
group by f1.name

# counting 
select q.id ,count(a.q_id) from  Answers a right  join  questions q on q.id=a.q_id group by q.id