
select  
	firstname,
	lastname,
	massages
	case(gender)
		when 'm' then 'ћужчина'
		when 'f' then '∆енщина'
	end as 'gender'
from users where id in (select * from (
select 
	case
		when initiator_user_id = 16 and status = 'approved' then target_user_id
		when target_user_id = 16 and status = 'approved' then initiator_user_id
	end as friend_id
from friend_requests) as fr_list where friend_id is not null);


select * from (
select 
	case
		when initiator_user_id = 16 and status = 'approved' then target_user_id
		when target_user_id = 16 and status = 'approved' then initiator_user_id
	end as friend_id
from friend_requests) as fr_list where friend_id is not null;

select initiator_user_id from friend_requests where target_user_id = 80 and status = 'approved'
union
select target_user_id from friend_requests where initiator_user_id = 80 and status = 'approved';




	
	
select
	(select concat(firstname, ' ', lastname) from users where id = m.from_user_id) from_user,
	 count(*) as total_msg 
from messages m
	where to_user_id = 80 group by m.from_user_id order by total_msg desc; 

	
	select
	(select concat(firstname, ' ', lastname) from users where id = m.from_user_id) from_user,
	 count(*) as max_mes
from messages m
	where to_user_id = 80 group by m.from_user_id order by max_mes desc; 

select
	(select concat(firstname, ' ', lastname) from users where id = m.from_user_id) from_user,
	message,
	create_at 
from messages m
where to_user_id = 80;-- кто слал сообщени€ пользователю 80


select 
	(select concat(firstname, ' ', lastname) from users where id = from_user_id) from_user
	union
	select max (count(message) from from_user_id)  
from messages where to_user_id = 80;

select count(*)  
from messages where to_user_id = 80; -- количество сообщений пользователю


select 
	(select concat(firstname, ' ', lastname) from users where id = from_user_id) from_user,
	count(*)  
from messages where to_user_id = 80;



    
-- зад 3
select id, timestampdiff(year, birthday, now()) as age from users
order by age asc limit 10;-- 10 самых молодых пользовател€


select 
	(select concat(firstname, ' ', lastname) from users where id = from_user_id) from_user,
	likes_users from likes_users as sum_likes
where user_id in (select id from (select id, birthday from users order by birthday desc limit 10) as younger_id); 
-- вывела лайки постов 10 самых молодых пользователей

-- зад 4

select count(*) as gender_likes,
	(select case (gender)
					when 'm' then 'ћужчины'
					when 'f' then '∆енщины'
	 		  end as 'gender'
	 from users where id=t1.from_user_id
	) as gender
from likes_posts t1
group by gender
order by gender_likes desc limit 1; -- работает все


-- зад 5
select avg(total_user_posts) from (select count(*) as total_user_posts  from posts group by user_id) as total_users_posts_tbl;



select 
	(select concat(firstname, ' ', lastname) from users where id = user_id) from_user,
	count(*) as total_user_posts 
from posts group by user_id order by total_user_posts asc limit 10; --пользователи, которые про€вл€ют низкую активность

