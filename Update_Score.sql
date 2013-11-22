create or replace
trigger title_rating_update_ai
    after insert or update on user_rating 
    
        
    declare
  
    begin

            
         update title t set rating = (select (((sum(score)*count(*) + ( 25000)) * (  sum(score)/count(*) ))
         /  ( select count(*) + 25000 from user_rating)) from user_rating ur where t.id = ur.title_id group by 1 );
                                                                           
                                        

    end;
    
