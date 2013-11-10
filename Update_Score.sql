create or replace
trigger title_rating_update_ai
    after insert or update on user_rating
    begin
            update title t set rating = (select sum(score)/count(*) as score from user_rating where t.id = user_rating.title_id);
    end;
    
