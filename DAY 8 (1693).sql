-- 1693. Daily Leads and Partners

-- For each date_id and make_name, find the number of distinct lead_id's and distinct partner_id's

CREATE TABLE DailySales(
    date_id date,
    make_name varchar(50) ,
    lead_id int ,
    partner_id int 
);
INSERT INTO DailySales VALUES 
('2020-12-8' , 'toyota',0 , 1),
('2020-12-8', 'toyota',1 , 0),
('2020-12-8', 'toyota',1 , 2),
('2020-12-7', 'toyota',0 , 2),
('2020-12-7', 'toyota',0 , 1),
('2020-12-8', 'honda',1 , 2),
('2020-12-8', 'honda',2 , 1),
('2020-12-7', 'honda',0 , 1),
('2020-12-7', 'honda',1 , 2),
('2020-12-7', 'honda',2 , 1);

SELECT date_id , make_name ,
COUNT(DISTINCT(lead_id)) AS unique_leads ,
COUNT(DISTINCT(partner_id)) AS unique_partners 
FROM DailySales
GROUP BY date_id  , make_name
ORDER  BY date_id  , make_name
;