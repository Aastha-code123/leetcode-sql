-- 1148. Article Views I

-- Write a solution to find all the authors that viewed at least one of their own articles.
-- Return the result table sorted by id in ascending order.


CREATE TABLE Views (
    article_id INT,
    author_id INT,
    viewer_id INT,
    view_date DATE
);

INSERT INTO Views VALUES 
(1,3,5,'2019-08-01'),
(1,3,6,'2019-08-02'),
(2,7,7,'2019-08-01'),
(2,7,6,'2019-08-02'),
(4,7,1,'2019-07-22'),
(3,4,4,'2019-07-21'),
(3,4,4,'2019-07-21');

SELECT DISTINCT
    author_id
FROM
    Views
WHERE
    author_id = viewer_id
ORDER BY author_id;