select sum(c.score) as score, b.emp_no, b.emp_name, b.position, b.email
from hr_employees as b
inner join hr_grade as c
on b.emp_no = c.emp_no
group by b.emp_no, b.emp_name, b.position, b.email
order by score desc limit 1