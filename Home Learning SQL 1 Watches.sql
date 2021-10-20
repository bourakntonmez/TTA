
DROP DATABASE watches;

CREATE DATABASE watches;

CREATE TABLE watches (
watch_id INT PRIMARY KEY,
watch_brand_name varchar(20) UNIQUE,
watch_color SET ("brown" ,"blue", "green", "red" , "black", "white"),
watch_price  double,
watch_made_date year);

desc watches;

insert into watches ( watch_id, watch_brand_name, watch_color, watch_price, watch_made_date)
values
("1", "RELEX","white","2500","2014"),
("2", "IWC","blue","4500","2015"),
("3", "ORIS","black","2500","2018"),
("4", "BALL","brown","9500","2019"),
("5", "SCR","red","2500","2014"),
("6", "AEROWATCH","blue","4500","2018"),
("7", "EARNSHAW","green","6500","2012"),
("8", "TAG HEUER","black","7500","2018"),
("9", "HUBLOT","brown","19500","2019"),
("10", "OMEGA","green","7200","2002");
delete from watch
where watch_id = 10;

update watches
set watch_brand_name = "ROLEX",
watch_color = "black",
watch_price = "5750",
watch_made_date = "2019"
where watches_id = 1 ;
	
CREATE TABLE watches_spare_parts (
watch_id INT PRIMARY KEY,
watch_stramp varchar(20),
watch_glass varchar(20),
watch_dial varchar(20),
watch_crown varchar(20));
insert into watches_spare_parts ( watch_id, watch_stramp, watch_glass, watch_dial, watch_crown)
values
("1", "metal","sapphire","classic","classicgold"),
("2", "silicon","sapphire","chronograph","sport"),
("3", "metal","sapphire","skeleton","classic"),
("4", "leather","sapphire","classic","classic"),
("5", "silicon","glass","sport","sport"),
("6", "leather","sapphire","classic","classic"),
("7", "metal","sapphire","skeleton","classic"),
("8", "TAG HEUER","black","classic","classic"),
("9", "silicon","brown","chronograph","sport"),
("10", "metal","mica","classic","classic");
