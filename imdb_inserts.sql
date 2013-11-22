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
    'Goldie'
  );
  
describe users;
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
    'Spike'
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
  insert into involvement values(1,1,'actor');
 
  insert into characters values (char_seq.nextval, 'Gyp Rosetti', 'Ruthless villian');
  insert into characters values (char_seq.nextval, 'Chalky White', 'Leader and primary caretaker of Atlantic County''s black population');
  insert into characters values (char_seq.nextval, 'Omar Little', 'Robbing Hood');
  
  insert into character_appearences values (1,1,1);
  insert into character_appearences values (2,1,2);
  insert into character_appearences values (3,2,2);
  
  
  


  insert into genre values ('drama');
  insert into genre values ('crime');
  insert into genre values ('thriller');
  insert into genre values ('history');
  
  insert into title_genre values(1,'drama');
  insert into title_genre values(1,'history');
  insert into title_genre values(1,'crime');
  insert into title_genre values(2,'drama');
  insert into title_genre values(2,'crime');
  insert into title_genre values(2,'thriller');
  
  -- Query demonstrating typic application queries and illustrating use of indexes.
  
  -- Query All Title and genre
    select t.name, g.genre from title t, title_genre g where t.id = g.title_id;
  -- Query to display the title, user and review
  select t.name ,u.First_Name, r.score, r.review from title t, review r, users u where r.title_id = t.id and u.id = r.user_id;
  -- displays all actors, associated titles and characters portrayed
    select c.name,t.name as title , ch.character_name from celebrity c, title t, characters ch, character_appearences i where t.id =i.title_id and c.id = i.celebrity_id and ch.id = i.character_id;
  -- displays all actors, associated titles and their involvement in the title
    select c.name,t.name , cat.category from celebrity c, title t, category cat, involvement i where t.id =i.title_id and c.id = i.celebrity_id and cat.category = i.category;
  -- Select a title by name
  select * from title where name ='The Wire';
  commit;
  
  