SELECT SUBSTRING(email, strpos(email,'@')+1, length(email)-4-strpos(email,'@')) as email_index from users
WHERE gender = 'Male'
GROUP BY email_index order by count(1) DESC limit 3
