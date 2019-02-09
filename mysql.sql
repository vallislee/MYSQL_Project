create schema lipeiyua;
use lipeiyua;

Create Table Participant (
	ParticipantID INT Not NULL,
    Name VarChar(45),
    DOB Date,
    Presenter TINYINT,
    CONSTRAINT ParticipantID_PK PRIMARY KEY (ParticipantID)
);

Create Table sponsor (
	SponsorID INT(5),
    name VARCHAR(45),
    CONSTRAINT Sponsor_PK Primary Key (SponsorID)
);

Create Table country (
	CountryCode INT(4),
    CountryName VARCHAR(45),
    CONSTRAINT CountryCode_PK primary key (CountryCode)
);

Create Table convention (
	ConventionID CHAR(10),
    Title VARCHAR(45),
    StartDate DATE,
    EndDate DATE,
    registrationFee INT(4),
    LocationCity VARCHAR(45),
    LocationStreet VARCHAR(45),
    LocationNo INT(5),
    LocationPostCode VARCHAR(10),
    CountryCode INT(4),
    CONSTRAINT ConventionID_PK PRIMARY KEY (ConventionID, CountryCode),
    CONSTRAINT CountryCode_FK FOREIGN KEY (CountryCode) REFERENCES country(CountryCode)
);

Create Table Participant_convention (
	ParticipantID INT,
    ConventionID Char(10),
    CONSTRAINT Participant_c_PK PRIMARY KEY (ParticipantID,ConventionID),
    CONSTRAINT Participant_convention_FK1 FOREIGN KEY (ParticipantID) REFERENCES Participant(ParticipantID),
    CONSTRAINT Participant_convention_FK2 FOREIGN KEY (ConventionID) REFERENCES convention(ConventionID)
);

Create Table session (
	SessionID INT(3),
    Subject VARCHAR(45),
    Day DATE,
    StartTime TEXT(5),
    FinishTime TEXT(5),
    ConventionID CHAR(10) NOT NULL,
    CONSTRAINT session_PK Primary Key (SessionID),
    CONSTRAINT session_FK foreign key (ConventionID) REFERENCES convention(ConventionID)
);

Create Table Discount (
	DiscountCode CHAR(3),
    ConventionID CHAR(10),
    percent INT(3),
    CONSTRAINT Discount_PK Primary Key (DiscountCode, ConventionID),
    CONSTRAINT Discount_FK Foreign Key (ConventionID) REFERENCES convention(ConventionID)
);

Create Table participant_fee (
	ParticipantID INT,
    DiscountCode CHAR(3),
    ConventionID CHAR(10),
	CONSTRAINT participant_fee_PK Primary Key (ParticipantID, DiscountCode, ConventionID),
    CONSTRAINT participant_fee_FK1 foreign key (ParticipantID) REFERENCES Participant(ParticipantID),
    CONSTRAINT participant_fee_FK2 Foreign Key (DiscountCode) REFERENCES Discount(DiscountCode),
    CONSTRAINT participant_fee_FK3 Foreign Key (ConventionID) REFERENCES convention(ConventionID)
);

Create Table convention_sponsor (
	ConventionID CHAR(10),
    SponsorID INT(5),
    budget FLOAT,
    CONSTRAINT convention_sponsor_PK Primary Key (ConventionID, SponsorID),
    CONSTRAINT convention_sponsor_FK1 Foreign Key (ConventionID) REFERENCES convention(ConventionID),
    CONSTRAINT convention_sponsor_FK2 Foreign Key (SponsorID) REFERENCES sponsor(SponsorID)
);

Create Table session_participant (
	SessionID INT(3),
    ParticipantID INT,
    CONSTRAINT session_participant_PK Primary Key (SessionID,ParticipantID),
    CONSTRAINT session_participant_FK1 FOREIGN KEY (SessionID) REFERENCES session(SessionID),
    CONSTRAINT session_participant_FK2 foreign key (ParticipantID) REFERENCES Participant(ParticipantID)
);

-- for report 1&2
INSERT Into participant(ParticipantID, Name) values (100,'James');
INSERT Into participant(ParticipantID, Name) values (101,'Aane');
INSERT Into participant(ParticipantID, Name) values (102,'Koo');
INSERT Into participant(ParticipantID, Name) values (103,'Ncn10');
INSERT Into participant(ParticipantID, Name) values (104,'capitan');
INSERT Into participant(ParticipantID, Name) values (105,'Cos');
INSERT Into participant(ParticipantID, Name) values (106,'BBCSD');
INSERT Into participant(ParticipantID, Name) values (107,'Essc');
INSERT Into participant(ParticipantID, Name) values (108,'Szzc');
INSERT Into participant(ParticipantID, Name) values (109,'BBcc');
INSERT Into participant(ParticipantID, Name) values (110,'Bxxzs');
INSERT Into participant(ParticipantID, Name) values (111,'Fog');
INSERT Into participant(ParticipantID, Name) values (112,'Cog');
INSERT Into participant(ParticipantID, Name) values (113,'cxxzs');
INSERT Into participant(ParticipantID, Name) values (114,'Fsg');
INSERT Into participant(ParticipantID, Name) values (115,'Codd');
INSERT Into participant(ParticipantID, Name) values (116,'Cing');
-- for report 7
INSERT Into participant(ParticipantID, Name) values (117,'Cin1');
INSERT Into participant(ParticipantID, Name) values (118,'Cin2');
INSERT Into participant(ParticipantID, Name) values (119,'Cin3');
INSERT Into participant(ParticipantID, Name) values (120,'Cin4');
INSERT Into participant(ParticipantID, Name) values (121,'Cin5');
INSERT Into participant(ParticipantID, Name) values (122,'Cin6');
INSERT Into participant(ParticipantID, Name) values (123,'Cin7');
INSERT Into participant(ParticipantID, Name) values (124,'Cin8');
INSERT Into participant(ParticipantID, Name) values (125,'Cin9');
INSERT Into participant(ParticipantID, Name) values (126,'Cin10');
INSERT Into participant(ParticipantID, Name) values (127,'Cin11');
INSERT Into participant(ParticipantID, Name) values (128,'Cin12');
INSERT Into participant(ParticipantID, Name) values (129,'Cin13');
INSERT Into participant(ParticipantID, Name) values (130,'Cin14');
INSERT Into participant(ParticipantID, Name) values (131,'Cin15');
INSERT Into participant(ParticipantID, Name) values (132,'Cin16');
INSERT Into participant(ParticipantID, Name) values (133,'Cin17');
INSERT Into participant(ParticipantID, Name) values (134,'Cin18');
INSERT Into participant(ParticipantID, Name) values (135,'Cin19');
INSERT Into participant(ParticipantID, Name) values (136,'Cin20');
INSERT Into participant(ParticipantID, Name) values (137,'Cin21');
INSERT Into participant(ParticipantID, Name) values (138,'Cin22');
INSERT Into participant(ParticipantID, Name) values (139,'Cin23');
INSERT Into participant(ParticipantID, Name) values (140,'Cin24');
INSERT Into participant(ParticipantID, Name) values (141,'Cin25');
INSERT Into participant(ParticipantID, Name) values (142,'Cin26');
INSERT Into participant(ParticipantID, Name) values (143,'Cin27');
INSERT Into participant(ParticipantID, Name) values (144,'Cin28');
INSERT Into participant(ParticipantID, Name) values (145,'Cin29');
INSERT Into participant(ParticipantID, Name) values (146,'Cin30');
INSERT Into participant(ParticipantID, Name) values (147,'Cin31');
INSERT Into participant(ParticipantID, Name) values (148,'Cin32');
INSERT Into participant(ParticipantID, Name) values (149,'Cin33');
INSERT Into participant(ParticipantID, Name) values (150,'Cin34');
INSERT Into participant(ParticipantID, Name) values (151,'Cin35');



-- insert country
Insert into country values (510,'Noname');
Insert into country values (333,'CD');
-- for report 6
Insert into country values (100,'China');
Insert into country values (200,'USA');
Insert into country values (300,'Canada');
Insert into country values (400,'Russia');
Insert into country values (500,'UK');
Insert into country values (600,'Aus');
Insert into country values (700,'GER');
Insert into country values (800,'Singap');
Insert into country values (900,'HK');
Insert into country values (1000,'India');
Insert into country values (1100,'Japan');


Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('CSCC43','ITiCSE',20,510);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('CSCC73','WWII',20,510);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('CSCC62','ITiCSE',100,333);
-- 15 itcse
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('Canada','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('D','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('E','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('F','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('G','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('H','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('I','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('J','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('K','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('L','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('M','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('N','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('O','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('P','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('Q','ITiCSE',100,333);
-- for report 6
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('600','ITiCSE',100,100);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('601','CSCCCC',100,200);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('602','BSCCC',100,300);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('603','DSSSSC',100,400);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('604','EAXXS',100,500);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('605','FSSS',100,600);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('606','GEEE',100,700);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('607','HHHHG',100,900);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('608','JCCX',100,1000);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('609','KIY',100,1100);


-- insert session
Insert into session(SessionID, Subject, ConventionID) values (130,'debugging','CSCC43');
Insert into session(SessionID, Subject, ConventionID) values (180,'debugging','CSCC73');
Insert into session(SessionID, Subject, ConventionID) values (141,'Sudo','CSCC62');
Insert into session(SessionID, Subject, ConventionID) values (150,'SSC','Canada');
Insert into session(SessionID, Subject, ConventionID) values (151,'SSC','D');
Insert into session(SessionID, Subject, ConventionID) values (152,'SSC','E');
Insert into session(SessionID, Subject, ConventionID) values (153,'SSC','F');
Insert into session(SessionID, Subject, ConventionID) values (154,'SSC','G');
Insert into session(SessionID, Subject, ConventionID) values (155,'SSC','H');
Insert into session(SessionID, Subject, ConventionID) values (156,'SSC','I');
Insert into session(SessionID, Subject, ConventionID) values (157,'SSC','J');
Insert into session(SessionID, Subject, ConventionID) values (158,'SSC','K');
Insert into session(SessionID, Subject, ConventionID) values (159,'SSC','L');
Insert into session(SessionID, Subject, ConventionID) values (160,'SSC','M');
Insert into session(SessionID, Subject, ConventionID) values (161,'SSC','N');
Insert into session(SessionID, Subject, ConventionID) values (162,'SSC','O');
Insert into session(SessionID, Subject, ConventionID) values (163,'SSC','P');
Insert into session(SessionID, Subject, ConventionID) values (164,'SSC','Q');
-- for report 6
Insert into session(SessionID, Subject, ConventionID) values (165,'debugging','600');
Insert into session(SessionID, Subject, ConventionID) values (166,'debugging','601');
Insert into session(SessionID, Subject, ConventionID) values (167,'debugging','602');
Insert into session(SessionID, Subject, ConventionID) values (168,'debugging','603');
Insert into session(SessionID, Subject, ConventionID) values (169,'programming','604');
Insert into session(SessionID, Subject, ConventionID) values (170,'programming','605');
Insert into session(SessionID, Subject, ConventionID) values (171,'programming','606');
Insert into session(SessionID, Subject, ConventionID) values (172,'programming','607');
Insert into session(SessionID, Subject, ConventionID) values (173,'programming','608');
Insert into session(SessionID, Subject, ConventionID) values (174,'programming','609');

-- insert session_participant
Insert into session_participant values (130,100);
Insert into session_participant values (130,101);
Insert into session_participant values (130,102);
Insert into session_participant values (130,105);
Insert into session_participant values (130,106);
Insert into session_participant values (130,107);
Insert into session_participant values (130,108);
Insert into session_participant values (130,109);
Insert into session_participant values (141,103);
Insert into session_participant values (141,104);
Insert into session_participant values (141,110);
Insert into session_participant values (141,111);
Insert into session_participant values (141,112);
Insert into session_participant values (180,113);
Insert into session_participant values (180,114);
Insert into session_participant values (180,115);

-- **//////
Insert into session_participant values (150,100);
Insert into session_participant values (151,100);
Insert into session_participant values (152,100);
Insert into session_participant values (153,100);
Insert into session_participant values (154,100);
Insert into session_participant values (155,100);
Insert into session_participant values (156,100);
Insert into session_participant values (157,100);
Insert into session_participant values (158,100);
Insert into session_participant values (159,100);
Insert into session_participant values (160,100);
Insert into session_participant values (161,100);
Insert into session_participant values (162,100);
Insert into session_participant values (163,100);
Insert into session_participant values (164,100);
-- 
Insert into session_participant values (150,116);
Insert into session_participant values (151,116);
Insert into session_participant values (152,116);
Insert into session_participant values (153,116);
Insert into session_participant values (154,116);
Insert into session_participant values (155,116);
Insert into session_participant values (156,116);
Insert into session_participant values (157,116);
Insert into session_participant values (158,116);
Insert into session_participant values (159,116);
Insert into session_participant values (160,116);
Insert into session_participant values (161,116);
Insert into session_participant values (162,116);
Insert into session_participant values (163,116);
Insert into session_participant values (164,116);

-- for report 7
Insert into session_participant values (130,117);
Insert into session_participant values (130,118);
Insert into session_participant values (130,119);
Insert into session_participant values (130,120);
Insert into session_participant values (130,121);
Insert into session_participant values (130,122);
Insert into session_participant values (130,123);
Insert into session_participant values (130,124);
Insert into session_participant values (130,125);
Insert into session_participant values (130,126);
Insert into session_participant values (130,127);
Insert into session_participant values (130,128);
Insert into session_participant values (130,129);
Insert into session_participant values (130,130);
Insert into session_participant values (130,131);
Insert into session_participant values (130,132);
Insert into session_participant values (130,133);
Insert into session_participant values (130,134);
Insert into session_participant values (130,135);
Insert into session_participant values (130,136);
Insert into session_participant values (130,137);
Insert into session_participant values (130,138);
Insert into session_participant values (130,139);
Insert into session_participant values (130,140);
Insert into session_participant values (130,141);
Insert into session_participant values (130,142);
Insert into session_participant values (130,143);
Insert into session_participant values (130,144);
Insert into session_participant values (130,145);
Insert into session_participant values (130,146);
Insert into session_participant values (130,147);
Insert into session_participant values (130,148);
Insert into session_participant values (130,149);
Insert into session_participant values (130,150);
Insert into session_participant values (130,151);

Insert into session_participant values (170,117);
Insert into session_participant values (170,118);
Insert into session_participant values (170,119);
Insert into session_participant values (170,120);
Insert into session_participant values (170,121);
Insert into session_participant values (170,122);
Insert into session_participant values (170,123);
Insert into session_participant values (170,124);
Insert into session_participant values (170,125);
Insert into session_participant values (170,126);
Insert into session_participant values (170,127);
Insert into session_participant values (170,128);
Insert into session_participant values (170,129);
Insert into session_participant values (170,130);
Insert into session_participant values (170,131);
Insert into session_participant values (170,132);
Insert into session_participant values (170,133);
Insert into session_participant values (170,134);
Insert into session_participant values (170,135);
Insert into session_participant values (170,136);
Insert into session_participant values (170,137);
Insert into session_participant values (170,138);
Insert into session_participant values (170,139);
Insert into session_participant values (170,140);
Insert into session_participant values (170,141);
Insert into session_participant values (170,142);
Insert into session_participant values (170,143);
Insert into session_participant values (170,144);
Insert into session_participant values (170,145);
Insert into session_participant values (170,146);
Insert into session_participant values (170,147);
Insert into session_participant values (170,148);
Insert into session_participant values (170,149);
Insert into session_participant values (170,150);
Insert into session_participant values (170,151);
-- for report 3
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('100','ITiCSE',100,333);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('200','CS Program',100,510);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('300','Finance',100,510);
Insert into convention(ConventionID, title, registrationFee, CountryCode) values ('400','Kingsman',200,333);
-- for report 8
Insert into session(SessionID, Subject, ConventionID) values (175,'Hack','100');
Insert into session(SessionID, Subject, ConventionID) values (176,'Hack1','100');
Insert into session(SessionID, Subject, ConventionID) values (177,'Hack2','100');
Insert into session(SessionID, Subject, ConventionID) values (178,'Hack3','100');
Insert into session(SessionID, Subject, ConventionID) values (179,'Hack4','100');
Insert into session(SessionID, Subject, ConventionID) values (181,'Hack5','100');
Insert into session(SessionID, Subject, ConventionID) values (182,'Hack6','100');
Insert into session(SessionID, Subject, ConventionID) values (183,'Hack7','100');
Insert into session(SessionID, Subject, ConventionID) values (184,'Hack8','100');
Insert into session(SessionID, Subject, ConventionID) values (185,'Hack9','100');
Insert into session(SessionID, Subject, ConventionID) values (186,'Hack10','100');

Insert into session_participant values (175,100);
Insert into session_participant values (176,100);
Insert into session_participant values (177,100);
Insert into session_participant values (178,100);
Insert into session_participant values (179,100);
Insert into session_participant values (181,100);
Insert into session_participant values (182,100);
Insert into session_participant values (183,100);
Insert into session_participant values (184,100);
Insert into session_participant values (185,100);
Insert into session_participant values (186,100);
Insert into session_participant values (175,101);
Insert into session_participant values (176,101);
Insert into session_participant values (177,101);
Insert into session_participant values (178,101);
Insert into session_participant values (179,101);
Insert into session_participant values (181,101);
Insert into session_participant values (182,101);
Insert into session_participant values (183,101);
Insert into session_participant values (184,101);
Insert into session_participant values (185,101);
Insert into session_participant values (186,101);
Insert into session_participant values (175,102);
Insert into session_participant values (176,102);
Insert into session_participant values (177,103);
Insert into session_participant values (178,104);
Insert into session_participant values (179,105);
Insert into session_participant values (181,105);
Insert into session_participant values (182,105);
Insert into session_participant values (183,105);
Insert into session_participant values (184,105);
Insert into session_participant values (185,105);
Insert into session_participant values (186,105);
-- others
Insert into session_participant values (175,106);
Insert into session_participant values (175,107);
Insert into session_participant values (175,108);
Insert into session_participant values (175,109);
Insert into session_participant values (175,110);
Insert into session_participant values (175,111);
Insert into session_participant values (175,112);
Insert into session_participant values (175,113);
Insert into session_participant values (175,114);
Insert into session_participant values (175,115);
Insert into session_participant values (175,116);
Insert into session_participant values (175,117);
Insert into session_participant values (175,118);
Insert into session_participant values (175,119);
Insert into session_participant values (175,120);
Insert into session_participant values (175,121);
Insert into session_participant values (175,122);
Insert into session_participant values (175,123);
Insert into session_participant values (175,124);
Insert into session_participant values (175,125);
Insert into session_participant values (175,126);
Insert into session_participant values (175,127);
Insert into session_participant values (175,128);
Insert into session_participant values (175,129);
Insert into session_participant values (175,130);
Insert into session_participant values (175,131);
Insert into session_participant values (175,132);
Insert into session_participant values (175,133);

Insert into session_participant values (176,106);
Insert into session_participant values (177,106);
Insert into session_participant values (178,106);
Insert into session_participant values (179,106);
Insert into session_participant values (181,106);
Insert into session_participant values (182,106);
Insert into session_participant values (183,106);
Insert into session_participant values (184,106);

Insert into sponsor values (1,'Asus');
Insert into sponsor values (2,'MicroSoft');
Insert into sponsor values (3,'Apple');
Insert into sponsor values (4,'Gigabyte');
Insert into sponsor values (5,'Samsung');
Insert into sponsor values (6,'LG');
Insert into sponsor values (7,'Shing');
Insert into sponsor values (8,'HUAWEI');
Insert into sponsor values (9,'Facebook');
Insert into sponsor values (10,'Snapchat');
Insert into sponsor values (11,'Tencent');
Insert into sponsor values (12,'QQ');
Insert into sponsor values (13,'Wechat');
Insert into sponsor values (14,'Diao');
Insert into sponsor values (15,'CS Group');


Insert into convention_sponsor values ('100',1,110.2);
Insert into convention_sponsor values ('100',2,110.2);
Insert into convention_sponsor values ('100',3,110.2);
Insert into convention_sponsor values ('100',4,110.2);
Insert into convention_sponsor values ('100',5,110.2);
Insert into convention_sponsor values ('200',6,110.2);
Insert into convention_sponsor values ('300',7,110.2);
Insert into convention_sponsor values ('300',8,110.2);
Insert into convention_sponsor values ('300',9,110.2);
Insert into convention_sponsor values ('300',10,110.2);
Insert into convention_sponsor values ('300',11,110.2);
Insert into convention_sponsor values ('400',12,110.2);
Insert into convention_sponsor values ('CSCC43',13,110.2);
Insert into convention_sponsor values ('CSCC73',14,110.2);
Insert into convention_sponsor values ('CSCC62',15,110.2);

-- For report 4
Insert into Discount values ('D1','100', 55);
Insert into Discount values ('D2','100', 10);
Insert into Discount values ('D3','100', 20);
Insert into Discount values ('D4','100', 30);
Insert into Discount values ('D5','100', 40);
Insert into Discount values ('D6','100', 98);
Insert into Discount values ('D7','200', 97);
Insert into Discount values ('D8','200', 91);
Insert into Discount values ('D9','200', 92);
Insert into Discount values ('D10','200', 93);
Insert into Discount values ('D11','200', 94);
Insert into Discount values ('D12','200', 95);
Insert into Discount values ('D13','300', 66);
Insert into Discount values ('D14','300', 88);
Insert into Discount values ('D15','300', 93);
Insert into Discount values ('D16','300', 93);
Insert into Discount values ('D17','300', 94);
Insert into Discount values ('D18','300', 95);

Insert into Discount values ('D19','400',22);
Insert into Discount values ('D20','400',22);
Insert into Discount values ('D21','400',22);
Insert into Discount values ('D22','400',22);

Insert into Discount values ('D19','CSCC43',32);
Insert into Discount values ('D20','CSCC73',43);
Insert into Discount values ('D20','CSCC62',50);

Insert into participant_fee values (100,'D1','100');
Insert into participant_fee values (101,'D2','100');
Insert into participant_fee values (102,'D3','100');
Insert into participant_fee values (103,'D4','100');
Insert into participant_fee values (104,'D5','100');
Insert into participant_fee values (105,'D6','100');
Insert into participant_fee values (100,'D7','200');
Insert into participant_fee values (101,'D8','200');
Insert into participant_fee values (102,'D9','200');
Insert into participant_fee values (103,'D10','200');
Insert into participant_fee values (104,'D11','200');
Insert into participant_fee values (105,'D12','200');
Insert into participant_fee values (100,'D13','300');
Insert into participant_fee values (101,'D14','300');
Insert into participant_fee values (102,'D15','300');
Insert into participant_fee values (103,'D16','300');
Insert into participant_fee values (104,'D17','300');
Insert into participant_fee values (105,'D18','300');


-- Report #1
Select participant.Name
from participant,session_participant, (select SessionID,Subject,
 Title from session, convention where session.ConventionID =
 convention.ConventionID AND subject='debugging' AND convention.Title='ITiCSE') AS Deb
where participant.ParticipantID = session_participant.ParticipantID AND
 session_participant.SessionID = Deb.sessionID
order by participant.Name asc;

-- Report #2
Select Name
from participant, session_participant
where participant.ParticipantID = session_participant.ParticipantID AND session_participant.SessionID IN(Select sessionID
from session, (Select ConventionID
from convention
where Title='ITiCSE') AS Conv
where session.ConventionID = Conv.ConventionID)
group by Name asc
having count(session_participant.SessionID) >= 15;

-- Report #3
Select name
From sponsor
Where SponsorID IN(Select SponsorID from convention_sponsor where ConventionID='100')
Order by name asc;

-- Report #4
select Name, max(percent)
from participant_fee, Discount, participant
where participant_fee.DiscountCode = Discount.DiscountCode AND
 participant.ParticipantID=participant_fee.ParticipantID
group by Name;

-- Report #5
select name, Convention_percent.Percent
from sponsor, convention_sponsor, (select convention.Title, convention.ConventionID, P.Percent
from convention, (select Title, Discount.ConventionID, max(Discount.percent) as Percent
from Discount, convention
where Discount.ConventionID=convention.ConventionID
group by Title) AS P
where P.title = convention.Title AND P.Percent > 40
group by Title) AS Convention_percent
where convention_sponsor.ConventionID=Convention_percent.ConventionID AND
 convention_sponsor.SponsorID=sponsor.SponsorID
 order by Convention_percent.Percent desc;

-- Report #6
Select CountryName, selected_convention.Subject, selected_convention.Title As Convention_Title
from country, (Select convention.ConventionID, convention.CountryCode, sess.Subject, convention.Title
from convention, (Select SessionID, Subject, ConventionID
from session
where Subject='debugging' OR Subject='programming') AS sess
where convention.ConventionID=sess.ConventionID) AS selected_convention
where country.CountryCode=selected_convention.CountryCode
order by country.CountryName asc, selected_convention.Title desc;

-- Report #7
Select convention.ConventionID, convention.Title, convention.StartDate, convention.EndDate, convention.registrationFee,
convention.LocationCity,convention.LocationStreet,convention.LocationNo,convention.LocationPostCode,convention.CountryCode,
 selected.count_part as number_of_participants
from convention, (Select session.SessionID, session.ConventionID, participant_count.count_part
from session, (Select SessionID, count(ParticipantID) as count_part
from session_participant
group by SessionID) AS participant_count
where session.SessionID=participant_count.SessionID AND participant_count.count_part > 30) AS selected
where convention.ConventionID=selected.ConventionID;

-- Report #8
-- (Nodiscount_participants_fees_Total.sum_Nodiscount_participants_fees+discount_participants_fees_Total.sum_discount_participants_fees + sponsor_budget_total.sum_budget) AS Total_earned
Select (Nodiscount_participants_fees_Total.sum_Nodiscount_participants_fees+discount_participants_fees_Total.sum_discount_participants_fees + sponsor_budget_total.sum_budget) AS Total_earned
from (select Nodiscount_participants_fees.ConventionID, sum(Nodiscount_participants_fees.Total_registrationFee) AS sum_Nodiscount_participants_fees
from (Select Nodiscount_participants.ParticipantID,Nodiscount_participants.ConventionID, Nodiscount_participants.sessions, Nodiscount_participants.sessions*400 AS Total_registrationFee
from (Select Total_sessions.ParticipantID,Total_sessions.ConventionID, Total_sessions.sessions
from (Select session_participant.ParticipantID,selected_sessions.ConventionID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions
where Total_sessions.ParticipantID NOT IN  (Select Participant_discount_list.ParticipantID
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode)) AS Nodiscount_participants) AS Nodiscount_participants_fees) AS Nodiscount_participants_fees_Total,
(select discount_participants_fees.ConventionID,sum(discount_participants_fees.Total_registrationFee) AS  sum_discount_participants_fees
from(Select discounts.ParticipantID, discounts.ConventionID, discounts.sessions, discounts.percent, discounts.sessions*(400-400*(discounts.percent/100)) AS Total_registrationFee
from (Select Total_sessions.ParticipantID,participant_discount.ConventionID, Total_sessions.sessions, participant_discount.percent
from (Select session_participant.ParticipantID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions, (Select Participant_discount_list.ParticipantID, Discount.ConventionID, Discount.percent
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode) AS participant_discount
where Total_sessions.ParticipantID=participant_discount.ParticipantID) AS discounts) AS discount_participants_fees) AS discount_participants_fees_Total,
(Select convention_sponsor.ConventionID, sum(budget) AS sum_budget
from convention_sponsor
where ConventionID='100') AS sponsor_budget_total;

-- where Nodiscount_participants_fees_Total.ConventionID=discount_participants_fees_Total.ConventionID AND discount_participants_fees_Total.ConventionID=sponsor_budget_total.ConventionID;





-- Ignore1
select SessionID,Subject, Title
from session, convention
where session.ConventionID = convention.ConventionID AND subject='debugging' AND convention.Title='ITiCSE';
select * from convention where convention.Title = 'ITiCSE';

-- Ignore2
select ConventionID
from convention
where Title='ITiCSE';

select sessionID
from session, (select ConventionID
from convention
where Title='ITiCSE') AS Conv
where session.ConventionID = Conv.ConventionID;

select Name, session_participant.ParticipantID, session_participant.SessionID
from participant, session_participant
where participant.ParticipantID = session_participant.ParticipantID;

-- Ignore3
select * from sponsor;
select SponsorID
from convention_sponsor
where ConventionID='100';

-- Ignore5
select Title, Discount.ConventionID, max(Discount.percent) as Mper
from Discount, convention
where Discount.ConventionID=convention.ConventionID
group by Title;

select convention.Title, convention.ConventionID, P.Percent
from convention, (select Title, Discount.ConventionID, max(Discount.percent) as Percent
from Discount, convention
where Discount.ConventionID=convention.ConventionID
group by Title) AS P
where P.title = convention.Title AND P.Percent > 40
group by Title;

-- Ignore6
select SessionID, ConventionID
from session
where Subject='debugging' OR Subject='programming';

Select convention.ConventionID, convention.CountryCode, convention.Title
from convention, (Select SessionID, ConventionID
from session
where Subject='debugging' OR Subject='programming') AS sess
where convention.ConventionID=sess.ConventionID
order by convention.Title desc;

-- Ignore 7
select SessionID, count(ParticipantID) as count_part
from session_participant
group by SessionID;

Select session.SessionID, session.ConventionID, participant_count.count_part
from session, (Select SessionID, count(ParticipantID) as count_part
from session_participant
group by SessionID) AS participant_count
where session.SessionID=participant_count.SessionID AND participant_count.count_part > 30;

-- Ignore 8
-- sponsor total budget
select *
from convention_sponsor
where ConventionID='100';

Select ConventionID,sum(budget) AS sum_budget
from convention_sponsor
where ConventionID='100';

Select *
from participant_fee
where ConventionID='100';

-- participant who has discount on '100'
Select Participant_discount_list.ParticipantID, Discount.ConventionID, Discount.percent
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode;

-- Total sessions for each participant
Select session_participant.ParticipantID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID;

Select Total_sessions.ParticipantID, participant_discount.ConventionID, Total_sessions.sessions, participant_discount.percent
from (Select session_participant.ParticipantID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions, (Select Participant_discount_list.ParticipantID, Discount.ConventionID, Discount.percent
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode) AS participant_discount
where Total_sessions.ParticipantID=participant_discount.ParticipantID;

-- discount participants fees
Select discounts.ParticipantID, discounts.ConventionID, discounts.sessions, discounts.percent, discounts.sessions*(400-400*(discounts.percent/100)) AS Total_registrationFee
from (Select Total_sessions.ParticipantID,participant_discount.ConventionID, Total_sessions.sessions, participant_discount.percent
from (Select session_participant.ParticipantID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions, (Select Participant_discount_list.ParticipantID, Discount.ConventionID, Discount.percent
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode) AS participant_discount
where Total_sessions.ParticipantID=participant_discount.ParticipantID) AS discounts;


Select Total_sessions.ParticipantID,Total_sessions.ConventionID, Total_sessions.sessions
from (Select session_participant.ParticipantID,selected_sessions.ConventionID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions
where Total_sessions.ParticipantID NOT IN  (Select Participant_discount_list.ParticipantID
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode);

Select Nodiscount_participants.ParticipantID,Nodiscount_participants.ConventionID, Nodiscount_participants.sessions, Nodiscount_participants.sessions*400 AS Total_registrationFee
from (Select Total_sessions.ParticipantID,Total_sessions.ConventionID, Total_sessions.sessions
from (Select session_participant.ParticipantID,selected_sessions.ConventionID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions
where Total_sessions.ParticipantID NOT IN  (Select Participant_discount_list.ParticipantID
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode)) AS Nodiscount_participants;



select Nodiscount_participants_fees.ConventionID, sum(Nodiscount_participants_fees.Total_registrationFee) AS sum_Nodiscount_participants_fees
from (Select Nodiscount_participants.ParticipantID,Nodiscount_participants.ConventionID, Nodiscount_participants.sessions, Nodiscount_participants.sessions*400 AS Total_registrationFee
from (Select Total_sessions.ParticipantID,Total_sessions.ConventionID, Total_sessions.sessions
from (Select session_participant.ParticipantID,selected_sessions.ConventionID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions
where Total_sessions.ParticipantID NOT IN  (Select Participant_discount_list.ParticipantID
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode)) AS Nodiscount_participants) AS Nodiscount_participants_fees;

select discount_participants_fees.ConventionID,sum(discount_participants_fees.Total_registrationFee) AS  sum_discount_participants_fees
from(Select discounts.ParticipantID, discounts.ConventionID, discounts.sessions, discounts.percent, discounts.sessions*(400-400*(discounts.percent/100)) AS Total_registrationFee
from (Select Total_sessions.ParticipantID,participant_discount.ConventionID, Total_sessions.sessions, participant_discount.percent
from (Select session_participant.ParticipantID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions, (Select Participant_discount_list.ParticipantID, Discount.ConventionID, Discount.percent
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode) AS participant_discount
where Total_sessions.ParticipantID=participant_discount.ParticipantID) AS discounts) AS discount_participants_fees;

Select convention_sponsor.ConventionID, sum(budget) AS sum_budget
from convention_sponsor
where ConventionID='100';



--  (Select convention_sponsor.ConventionID,sum(budget) AS sum_budget from convention_sponsor where ConventionID='100') AS Sponsors
-- test 1
select sum(Nodiscount_participants_fees.Total_registrationFee)
from (Select Nodiscount_participants.ParticipantID, Nodiscount_participants.sessions, Nodiscount_participants.sessions*400 AS Total_registrationFee
from (Select Total_sessions.ParticipantID, Total_sessions.sessions
from (Select session_participant.ParticipantID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions
where Total_sessions.ParticipantID NOT IN  (Select Participant_discount_list.ParticipantID
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode)) AS Nodiscount_participants) as Nodiscount_participants_fees;

select sum(d.Total_registrationFee) 
from (Select discounts.ParticipantID, discounts.sessions, discounts.percent, discounts.sessions*(400-400*(discounts.percent/100)) AS Total_registrationFee
from (Select Total_sessions.ParticipantID, Total_sessions.sessions, participant_discount.percent
from (Select session_participant.ParticipantID, count(session_participant.SessionID) AS sessions
from session_participant, (Select * from session
where ConventionID='100') AS selected_sessions
where session_participant.SessionID=selected_sessions.SessionID
group by ParticipantID) AS Total_sessions, (Select Participant_discount_list.ParticipantID, Discount.ConventionID, Discount.percent
from Discount, (Select *
from participant_fee
where ConventionID='100') AS Participant_discount_list
where Participant_discount_list.DiscountCode = Discount.DiscountCode) AS participant_discount
where Total_sessions.ParticipantID=participant_discount.ParticipantID) AS discounts) as d;

select sum(sponsor.sum_budget)
from (Select sum(budget) AS sum_budget
from convention_sponsor
where ConventionID='100') as sponsor;


