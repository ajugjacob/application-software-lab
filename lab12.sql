use sys;
SELECT a.sid, a.sname, a.rating, a.age
FROM sailors AS a
INNER JOIN reserves AS c ON a.sid = c.sid AND c.bid =101;

SELECT b.bname
FROM reserves AS c
INNER JOIN sailors AS a ON a.sid = c.sid AND a.sname = 'MARK'
INNER JOIN boats AS b ON b.bid = c.bid;

SELECT a.sname
FROM sailors AS a
INNER JOIN reserves AS c ON a.sid = c.sid
INNER JOIN boats AS b ON b.bid = c.bid AND b.colour = 'green'
ORDER BY a.age;

SELECT DISTINCT a.sname
FROM sailors AS a
INNER JOIN reserves AS c ON a.sid IN (c.sid);

SELECT a.sid,a.sname
FROM reserves AS c
INNER JOIN reserves AS d ON c.sid <> d.sid AND c.day = d.day
INNER JOIN sailors AS a ON d.sid = a.sid;