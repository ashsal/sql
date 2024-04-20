select now();
select curdate();
select curtime();
select date(now());
select time(now());

select year(now());
select month(now());

select monthname(now());
select day(now());
select hour(now());
select minute(now());
select second(now());

select weekday(now());
select week(now());

select last_day(now());

select now(), date_format(now(), "%d/%m/%Y %H %i %s");


select now(), time_format(now(), "%H %i %s");

select datediff('2024-02-02', '2024-01-31');
select datediff(curdate(), '2024-01-31');

select timestampdiff(hour, '2024-01-31', '2024-02-02');

select date_add(curdate(), interval 1 year);
select date_add(curdate(), interval 1 week);
select date_add(curdate(), interval 1 month);

select date_sub(curdate(), interval 1 week);

select str_to_date('31-12-2023', '%d-%m-%Y');

select unix_timestamp();

select from_unixtime(1713612605);
select from_unixtime(0);

