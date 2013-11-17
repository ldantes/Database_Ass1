INSERT
INTO
  users VALUES
  (
    user_seq.nextval,
    'ldantes',
    '**********',
    sysdate,
    'ldantes@imdb.com',
    'Les',
    'Ducray',
    'M',
    '9-AUG-90',
    'xxxx',
    'Ireland',
    'First pets name',
    'xxxx'
  );

INSERT
INTO
  users VALUES
  (
    user_seq.nextval,
    'samual',
    '**********',
    sysdate,
    'shar@imdb.com',
    'Sam',
    'Harrison',
    'F',
    '19-JUN-87',
    'xxxx',
    'Ireland',
    'First pets name',
    'xxxx'
  );
  
  INSERT
INTO
  users VALUES
  (
    user_seq.nextval,
    'rat',
    '**********',
    sysdate,
    'rat@imdb.com',
    'Richard',
    'King',
    'M',
    '01-MAY-96',
    'xxxx',
    'Ireland',
    'Mothers name',
    'Mary'
  );
  
 insert into Title values
(
  title_seq.nextval,
  'Boardwalk Empire',
  null,
  'TV Series',
  'TVMA' ,
  60,
  'Chronicles the life and times of Nucky Thompson, the undisputed ruler of Atlantic City.',
  'Set in the Prohibition era of the 1920s Boardwalk Empire is the story of Enoch "Nucky" Thompson, the treasurer of Atlantic County, Atlantic City, New Jersey.',
  sysdate
  
  );
  
   insert into Title values
(
  title_seq.nextval,
  'The Wire',
  null,
  'TV Series',
  'TVMA' ,
  60,
  'Baltimore drug scene, seen through the eyes of drug dealers, and law enforcement. ',
  'Set in Baltimore, this show centers around the city''s inner-city drug scene. It starts as mid-level drug dealer, D''Angelo Barksdale beats a murder rap. After a conversation with a judge, Det. James McNulty has been assigned to lead a joint homicide and narcotics team, in order to bring down drug kingpin Avon Barksdale. ',
  sysdate
  
  );
  
  insert into celebrity values(celeb_seq.nextval,'Bobby Cannavale','3-MAY-1970',1.89,'Taurus');
  insert into celebrity values(celeb_seq.nextval,'Michael K. Williams','22-NOV-1966',1.8,'Sagittarius');
  select * from celebrity;
  insert into category values ('actor');
  insert into category values ('producer');
  insert into category values ('self');
  insert into category values ('thanks');
  
  insert into involvement values(2,2,'actor');
  insert into involvement values(2,1,'actor');
  select c.name,t.name , cat.category from celebrity c, title t, category cat, involvement i where t.id =i.title_id and c.id = i.celebrity_id and cat.category = i.category;
  
  
  insert into user_rating values(1,1,9,sysdate);
  insert into user_rating values(2,1,3,sysdate);
  insert into user_rating values(3,1,8,sysdate);
   insert into user_rating values(1,2,7,sysdate);
  insert into user_rating values(2,2,8,sysdate);
  insert into user_rating values(3,2,10,sysdate);
  
  update user_rating set score = 10.1 where user_id = 1 and title_id =1;
  insert into user_rating_log values(1,sysdate);
  insert into user_rating_log values(1,sysdate);
  select * from title;
  
  commit;
  drop trigger USER_RATING_AI;
 
  