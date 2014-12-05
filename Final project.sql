
	--student
		Drop table if exists Student;
		create table Student
		(
		 sid char(20) primary key,
		 fname char(20),
		 lname text,
		 gender text,
		 dob date,
		 building text not null,
		 room char(20)
		 );

		--insert into student
		insert into student(sid,fname,lname,gender,dob,building,room)
			values('20048890','kevel','Kim','male','02-04-1995','Leo','103');
		insert into Student(Sid,fname,lname,gender,dob,building,room)
			values('20024482','kan','Smith','male','12-04-1995','Marian','304');
		insert into student(sid,fname,lname,gender,dob,building,room)
			values('20045650','Ada','molon','female','07-08-1994','Sheahan','209');
		insert into Student(Sid,fname,lname,gender,dob,building,room)
			values('20048824','Kyle','Bend','male','06-04-1993','Champagnat','604');
		insert into student(sid,fname,lname,gender,dob,building,room)
			values('20048678','Susan','Lee','female','11-25-1994','Leo','509');
		insert into Student(Sid,fname,lname,gender,dob,building,room)
			values('20040067','Caroline','Sean','female','04-15-1994','Marian','219');
		insert into student(sid,fname,lname,gender,dob,building,room)
			values('20048867','Kaitlyn','Fold','female','10-10-1992','Sheahan','205');
		insert into Student(Sid,fname,lname,gender,dob,building,room)
			values('20024483','Kayla','Bean','female','03-19-1995','Champagnat','903');
			
	select*
	from Student;



	--building
	Drop table if exists Building;
	create table Building
	(
	bid char(3) primary key,
	building text not null,
	floor char(20),
	room char(20),
	staytime date
	);

	--insert into building
	insert into Building(bid,building,floor,room,staytime)
		values('b01','Leo','3','305','12-15-2014');
	insert into Building(bid,building,floor,room,staytime)
		values('b02','Sheahan','2','215','12-19-2014');
	insert into Building(bid,building,floor,room,staytime)
		values('b03','Leo','2','215','12-17-2014');
	insert into Building(bid,building,floor,room,staytime)
		values('b04','Marian','2','204','12-18-2014');
	insert into Building(bid,building,floor,room,staytime)
		values('b05','Champagnat','7','705','12-19-2014');
	insert into Building(bid,building,floor,room,staytime)
		values('b06','Sheahan','3','311','12-16-2014');

	select *
	from Building;

	--Room
	drop table if exists Room;
	create table Room
	(
	rid char(3) primary key,
	building text not null,
	floor char(20),
	room char(20)
	);
	--insert into room
	insert into Room(rid,building,floor,room)
		values('r01','Sheahan','2','210');
	insert into Room(rid,building,floor,room)
		values('r02','Champagnat','7','705');
	insert into Room(rid,building,floor,room)
		values('r03','Leo','3','304');
	insert into Room(rid,building,floor,room)
		values('r04','Marian','2','219');
	insert into Room(rid,building,floor,room)
		values('r05','Sheahan','3','315');
	insert into Room(rid,building,floor,room)
		values('r06','Champagnat','7','709');
	insert into Room(rid,building,floor,room)
		values('r07','Sheahan','3','310');
	insert into Room(rid,building,floor,room)
		values('r08','Champagnat','8','809');
		
	select *
	from Room;

	--visitor
	drop table if exists Visitor;
	create table Visitor
	(
	vid char(20) primary key,
	fname text,
	lname text,
	Vdate date not null,
	Vtime time not null
	);

	--insert into visitor
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20047387','Dan','Mathew','10-15-2014','18:30');
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20037893','Kenny','Ocean','11-11-2014','10:25');
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20043453','John','Miller','10-23-2014','13:30');
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20046535','Dannel','Mcbrain','11-12-2014','11:35');
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20045643','Bryn','kushi','9-12-2014','9:30');
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20042465','Sally','Ross','11-11-2014','14:25');
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20043465','Roza','Mura','10-05-2014','20:30');
	insert into Visitor(vid,fname,lname,vdate,vtime)
		values('20049323','William','Curry','12-01-2014','21:18');
	select *
	from Visitor;

	--Resident staff
	drop table if exists Staff;
	create table Staff
	(
	 staid char(20) primary key,
	 fname char(20),
	 lname text,
	 gender text,
	 building text not null,
	 floor char(20)
	 );

	--inset into staff
	insert into Staff(staid,fname,lname,gender,building,floor)
		Values('20048890','kelly','McDough','female','Marian','2');
	insert into Staff(staid,fname,lname,gender,building,floor)
		Values('20034532','Paggy','Smith','female','Champanat','5');
	insert into Staff(staid,fname,lname,gender,building,floor)
		Values('20040053','Wendy','Sung','female','Marian','1');
	insert into Staff(staid,fname,lname,gender,building,floor)
		Values('20022244','Warren','Park','male','Champanat','4');
	insert into Staff(staid,fname,lname,gender,building,floor)
		Values('20048888','kimi','Yuk','male','Marian','1');
	insert into Staff(staid,fname,lname,gender,building,floor)
		Values('20024234','Lucas','Zain','male','Leo','1');
	select*
	from Staff;


	--table moveout
	drop table if exists Moveout;
	create table Moveout
	(
	mid char(20) not null primary key,
	fname text,
	lname text,
	mdate date not null,
	mtime time not null
	);
	--insert into moveout
	insert into Moveout(mid,fname,lname,mdate,mtime)
		values('m01','Cara','Leon','12-17-2014','15:30');
	insert into Moveout(mid,fname,lname,mdate,mtime)
		values('m02','Lesly','Garcia','12-18-2014','16:10');
	insert into Moveout(mid,fname,lname,mdate,mtime)
		values('m03','Darriel','NG','12-19-2014','17:20');
	insert into Moveout(mid,fname,lname,mdate,mtime)
		values('m04','Brandon','Colon','12-17-2014','13:40');
	insert into Moveout(mid,fname,lname,mdate,mtime)
		values('m05','Helen','Wood','12-19-2014','14:30');
	insert into Moveout(mid,fname,lname,mdate,mtime)
		values('m06','Anna','Kuan','12-18-2014','13:40');
	insert into Moveout(mid,fname,lname,mtime)
		values('m10','','Leon','15:30');
 
	select*
	from Moveout;
	
	
--view 
	drop view if exists vdate;
	create view vdate 
	AS
		select distinct fname,lname
		from Visitor
		where vdate='11-11-2014';
		    
		 select *
		 from vdate;


--query
		select fname,lname,room
		from Student
		where building='Sheahan' and gender='female';

--store procedures,Count the total number of students.
	CREATE OR REPLACE FUNCTION student_count() RETURNS INT AS $$
	DECLARE
		studentcount INT;
	BEGIN
		SELECT COUNT(*)
		INTO studentcount 
		FROM student;
		RETURN studentcount;
	END;
	&&
	LANGUAGE plpgsql;
	SELECT student_count();

--trigger-
	
	CREATE OR REPLACE FUNCTION unknown_first_name() RETURNS trigger AS $my_trigger$ BEGIN
	IF NEW.fname IS NULL OR NEW.fname = '' THEN NEW.fname := 'Unknown';
	END IF;
	RETURN NEW; 
	END;
	$my_trigger$
	LANGUAGE plpgsql;
	
	CREATE TRIGGER my_trigger
	BEFORE INSERT ON Moveout
	FOR EACH ROW
	EXECUTE PROCEDURE unknown_first_name();
	drop trigger my_trigger on Moveout;

--trigger
	CREATE OR REPLACE FUNCTION current_date_set() RETURNS trigger AS $date_trigger$ BEGIN
	IF NEW.mdate IS NULL OR NEW.mdate = '' THEN NEW.mdate := current_date;
	END IF;
	RETURN NEW; 
	END;
	$date_trigger$
	LANGUAGE plpgsql;
	
	CREATE TRIGGER date_trigger
	BEFORE INSERT ON Moveout
	FOR EACH ROW
	EXECUTE PROCEDURE current_date_set();

	drop trigger _trigger on Moveout;

	SELECT CURRENT_DATE;