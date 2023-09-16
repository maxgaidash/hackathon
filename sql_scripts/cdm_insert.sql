insert into cdm.event_by_hour
(event_timestamp, date, hour, event)
select event_timestamp, date, hour, event_type_from_url
from dds.event_log;

insert into cdm.purchase_by_hour
(hour, purchase_count)
select 
	hour,
	count(*)
from dds.event_log
where event_type_from_url = 'payment'
group by hour;

insert into cdm.top_pages
(referer_url, visit_count)
select 
	referer_url,
	count(referer_url) 
from dds.event_log
where event_type_from_url = 'payment'
group by referer_url;