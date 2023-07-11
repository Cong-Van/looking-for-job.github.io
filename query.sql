use prj321x_asm02;

select * from 
recruitment r JOIN 
(select count(recruitment_id) AS count, recruitment_id from apply_post group by recruitment_id) a
ON r.id = a.recruitment_id
order by count desc, salary desc, quantity desc LIMIT 3;

SELECT * FROM company c JOIN (select sum(count) as sum, company_id from 
recruitment r JOIN 
(select count(recruitment_id) AS count, recruitment_id from apply_post group by recruitment_id) a
ON r.id = a.recruitment_id
group by company_id order by sum desc LIMIT 3) a ON c.id = a.company_id order by sum desc;

SELECT * FROM category ORDER BY number_choose DESC LIMIT 4;

SELECT * FROM recruitment r JOIN
            (SELECT count(recruitment_id) AS count, recruitment_id FROM apply_post GROUP BY recruitment_id) a
            ON r.id = a.recruitment_id
            ORDER BY count DESC, salary DESC, quantity DESC LIMIT 5;
            
SELECT * FROM user u JOIN 
(SELECT user_id, company_id from apply_post a JOIN recruitment r ON a.recruitment_id = r.id WHERE company_id = 1 group by user_id) a
ON u.id = a.user_id;

SELECT * FROM recruitment r JOIN apply_post a ON r.id = a.recruitment_id WHERE user_id = 2;

SELECT * FROM recruitment r JOIN save_job s ON r.id = s.recruitment_id WHERE user_id = 2;






