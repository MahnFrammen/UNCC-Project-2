create table category(
	category_id VARCHAR not null,
	category VARCHAR not null,
primary key (category_id));
COPY category FROM 'C:/BootCamp/AllHW/Group Project 2/UNCC-Project-2/Project2/Crowdfunding_ETL-main/Resources/category.csv'