-- 511. Game Play Analysis I

-- Write a solution to find the first login date for each player.

CREATE TABLE Activity (
    player_id INT,
    devise_id INT,
    event_date DATE,
    games_played INT
);

insert into Activity values
(1,2,'2016-03-01',5),
(1,2,'2016-05-02',6),
(2,3,'2017-06-25',1),
(3,1,'2016-03-02',0),
(3,4,'2018-07-03',5);

SELECT 
    player_id, MIN(event_date) AS first_login
FROM
    Activity
GROUP BY player_id;


