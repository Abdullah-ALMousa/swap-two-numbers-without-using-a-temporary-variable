--Question 4 --
select username , numLogins from  (Select username , COUNT(username) as numLogins
from i_user_login_logs INNER JOIN i_users on 
i_users.userId = i_user_login_logs.userId GROUP BY
 username) as A where A.numLogins > 3
 --Question 5 --
select username , emailaddress , numLogins from (Select username , emailaddress , COUNT(username) as numLogins
from i_user_login_logs INNER JOIN i_users on 
i_users.userId = i_user_login_logs.userId 
where i_users.userId != 1 
GROUP BY
username , emailaddress) as A   



 