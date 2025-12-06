
-- 1683 . INVALID TWEETS 

-- Write a solution to find the IDs of the invalid tweets.
-- The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

CREATE TABLE Tweets (
    tweet_id INT,
    content VARCHAR(50)
);
INSERT INTO Tweets VALUES 
(1,'LET US CODE'),
(2 , 'MORE THAN FIFTEEN CHARS ARE HERE!');

SELECT 
    tweet_id
FROM
    Tweets
WHERE
    LENGTH(content) > 15;