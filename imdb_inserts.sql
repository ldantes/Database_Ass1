INSERT
INTO
  users VALUES
  (
    1,
    'ldantes',
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
    2,
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
    3,
    'rat',
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
  
 insert into Title values
(
  1,
  'Boardwalk Empire',
  null,
  'TV Series',
  '18MA' ,
  60,
  null,
  null,
  sysdate
  
  );
  
  insert into user_rating values(1,1,9,sysdate);
  insert into user_rating values(2,1,3,sysdate);
  insert into user_rating values(3,1,1,sysdate);
  
  update user_rating set score = 10.1 where user_id = 1 and title_id =1;
  insert into user_rating_log values(1,sysdate);
  insert into user_rating_log values(1,sysdate);
  select * from title;
  
  commit;
  drop trigger USER_RATING_AI;
 
  