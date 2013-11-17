
DROP TABLE Title_Genre;
DROP TABLE Genre;
DROP TABLE Character_appearences;
DROP TABLE Characters;
DROP TABLE User_Rating;
DROP TABLE Review;
DROP TABLE Users;
DROP TABLE Involvement;
DROP TABLE Title;
DROP TABLE Category;
DROP TABLE Celebrity;

CREATE TABLE Celebrity
(
  Id number(10) PRIMARY KEY,
  Name varchar(50) not null,
  Date_of_Birth date not null,
  Height  number(4,2),
  star_sign varchar(15)
  
);

CREATE TABLE Category
(
   Category varchar(20) primary key
);

CREATE TABLE Title
(
  Id number(10) PRIMARY KEY,
  Name varchar(50) not null,
  Rating decimal(3,1) check (rating <= 10.00),
  Type varchar2(20) not null check (Type in ('TV Series','Tv Eisode','TV Mini-Series','Video', 'Short','Film','Tv Movie', 'Video Game' )),
  Certificate varchar(5) ,
  Duration number(3),
  Introduction varchar2(200),
  Storyline varchar2(500),
  Release_Date date
  
  );

CREATE TABLE Involvement
(
  Celebrity_Id number(10) ,
  Title_Id number(10),
  Category varchar(30),
  
  primary key (celebrity_id, title_id, category),
  CONSTRAINT Inv_Celeb_Id FOREIGN KEY (Celebrity_Id)
        REFERENCES celebrity(id),
  CONSTRAINT Inv_Title_Id FOREIGN KEY (Title_Id)
        REFERENCES title(id),
  CONSTRAINT Inv_Category FOREIGN KEY (Category)
        REFERENCES category(category)
);

CREATE TABLE Users
(
  id number(10) primary key,
  public_id varchar(24) unique,
  Password varchar(64) not null,
  Date_Joined date not null,
  email_address varchar2(62) not null ,
  First_Name varchar2(32)not null,
  Surname varchar2(32) not null,
  Gender char not null check (Gender in ('M','F','m','f')),
  Date_of_birth date not null ,
  ZIP varchar(5) not null,
  Country_of_Residence varchar2(50) not null  ,
  Security_Question varchar(32),
  Security_Answer varchar(32)
  
);

CREATE TABLE Review
(
  User_Id number(10),
  Title_Id number(10),
  Score number(1),
  Review blob,
  primary key(user_id,title_Id),
   CONSTRAINT Rev_User_Id FOREIGN KEY (User_Id)
        REFERENCES users(id),
   CONSTRAINT Rev_Title_Id FOREIGN KEY (Title_Id)
        REFERENCES Title(id)
);

CREATE TABLE User_Rating
(
  User_Id number(10),
  Title_Id number(10),
  Score number(2) check (Score <= 10),
  date_added date,
  primary key(user_id,title_Id),  
   CONSTRAINT UR_User_Id FOREIGN KEY (User_Id)
        REFERENCES users(id),
   CONSTRAINT UR_Title_Id FOREIGN KEY (Title_Id)
        REFERENCES Title(id)
);

CREATE TABLE Characters
(
  Id number(10),
  Character_Name varchar(50)  NOT NULL,
  Biography blob,
  PRIMARY KEY (Id)
);

CREATE TABLE Character_appearences
(
  Character_id  number(10),
  Title_Id number(10),
  Celebrity_Id number(10),
  PRIMARY KEY (character_Id,Title_id),
  
   CONSTRAINT Appear_Char_Id FOREIGN KEY (Character_Id)
        REFERENCES Characters(id),
   CONSTRAINT Appear_Celeb_Id FOREIGN KEY (Celebrity_Id)
        REFERENCES celebrity(id),
   CONSTRAINT appear_Title_Id FOREIGN KEY (Title_Id)
        REFERENCES Title(id)
  
);

CREATE TABLE Genre
(
  Genre varchar(20) primary key
  
);

CREATE TABLE Title_Genre
(
  Title_Id number(10),
  Genre varchar(20),
  primary key (title_id, genre),
   CONSTRAINT Title_Genre FOREIGN KEY (Genre)
        REFERENCES Genre(Genre),
   CONSTRAINT Genre_Title FOREIGN KEY (Title_Id)
        REFERENCES Title(id)
  
);


--create sequences 
drop  SEQUENCE TITLE_SEQ;
drop SEQUENCE Char_SEQ;
drop SEQUENCE Celeb_SEQ;
drop SEQUENCE user_SEQ;
CREATE SEQUENCE TITLE_SEQ MINVALUE 1 MAXVALUE
  999999 INCREMENT BY 1 START WITH 1 CACHE 20 ;
CREATE SEQUENCE Char_SEQ MINVALUE 1 MAXVALUE
  999999 INCREMENT BY 1 START WITH 1 CACHE 20 ;
CREATE SEQUENCE Celeb_SEQ MINVALUE 1 MAXVALUE
  999999 INCREMENT BY 1 START WITH 1 CACHE 20 ;
CREATE SEQUENCE user_SEQ MINVALUE 1 MAXVALUE
  999999 INCREMENT BY 1 START WITH 1 CACHE 20 ;