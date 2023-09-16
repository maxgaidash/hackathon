--Создание схем DDS и CDM

--DROP SCHEMA dds;
CREATE SCHEMA if not exists dds AUTHORIZATION de_student;

--DROP SCHEMA cdm;
CREATE SCHEMA if not exists cdm AUTHORIZATION de_student;

--Создание таблицы dds.event_log

-- DROP TABLE dds.event_log;
CREATE TABLE if not exists dds.event_log (
	event_id varchar(50) NULL,
	event_timestamp timestamp(6) NULL,
	event_type varchar(20) NULL,
	page_url varchar(300) NULL,
	page_url_path varchar(100) NULL,
	referer_url varchar(100) NULL,
	referer_url_scheme varchar(100) NULL,
	referer_url_port int8 NULL,
	referer_medium varchar(100) NULL,
	utm_medium varchar(100) NULL,
	utm_source varchar(100) NULL,
	utm_content varchar(100) NULL,
	utm_campaign varchar(100) NULL,
	click_id varchar(50) NULL,
	geo_latitude float8 NULL,
	geo_longitude float8 NULL,
	geo_country varchar(10) NULL,
	geo_timezone varchar(100) NULL,
	geo_region_name varchar(100) NULL,
	ip_address varchar(20) NULL,
	browser_name varchar(100) NULL,
	browser_user_agent varchar(300) NULL,
	browser_language varchar(10) NULL,
	os varchar(100) NULL,
	os_name varchar(50) NULL,
	os_timezone varchar(50) NULL,
	device_type varchar(50) NULL,
	device_is_mobile bool NULL,
	user_custom_id varchar(100) NULL,
	user_domain_id varchar(50) NULL,
	"date" date NULL,
	"hour" int NULL,
	event_type_from_url varchar(50) NULL
);

--Создание таблицы cdm.event_by_hour

-- DROP TABLE cdm.event_by_hour;
CREATE TABLE if not exists cdm.event_by_hour (
	event_timestamp timestamp(6) NULL,
	"date" date NULL,
	"hour" int4 NULL,
	"event" varchar(50) NULL
);

--Создание таблицы cdm.purchase_by_hour

-- DROP TABLE cdm.purchase_by_hour;
CREATE TABLE if not exists cdm.purchase_by_hour (
	"hour" int4 NULL,
	purchase_count int4 NULL
);

--Создание таблицы cdm.top_pages

-- DROP TABLE cdm.top_pages;
CREATE TABLE if not exists cdm.top_pages (
	referer_url varchar(100) NULL,
	visit_count int4 NULL
);
