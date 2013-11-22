SET SERVEROUTPUT ON
DECLARE
u_ID users.id%type:= '&Enter_UserID';
t_ID title.id%type:='&Enter_title_Id';
u_Score User_rating.score%type:='&Enter_score';
u_count number;

BEGIN

     select count(*) into u_count from user_rating where user_id = u_ID and title_id = t_id;
     
     if(U_count >0) then
        update User_rating set score = u_score  where user_id = u_ID and title_id = t_id;
     
     else 
        insert into User_rating VALUES(u_ID,t_Id,u_Score,sysdate);
     
     end if ;
     commit;
   
    
End;


