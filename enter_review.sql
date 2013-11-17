SET SERVEROUTPUT ON
DECLARE
u_ID users.id%type:= '&Enter_UserID';
t_ID title.id%type:='&Enter_title_Id';
u_Score review.score%type:='&Enter_score';
u_Rev review.review%type:='&Enter_Review';
u_count number;

BEGIN

     select count(*) into u_count from review where user_id = u_ID and title_id = t_id;
     
     if(U_count >0) then
        update review set score = u_score , review = u_Rev    where user_id = u_ID and title_id = t_id;
    else
     
        insert into review VALUES(u_ID,t_Id,u_Score,u_Rev);
     
     end if ;
     commit;
   
    
End;
