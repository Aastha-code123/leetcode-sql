-- 1050. Actors and Directors Who Cooperated At Least Three Times

-- Write a solution to find all the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.

CREATE TABLE ActorDirector (
    actor_id INT,
    director_id INT,
    timestamp INT
);
INSERT INTO ActorDirector VALUES 
(1,1,0),
(1,1,1),
(1,1,2),
(1,2,3),
(1,2,4),
(2,1,5),
(2,1,6);

SELECT 
    actor_id, director_id
FROM
    ActorDirector
GROUP BY actor_id , director_id
HAVING COUNT(*) >= 3;