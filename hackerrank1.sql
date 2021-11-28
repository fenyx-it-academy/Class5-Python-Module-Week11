SELECT s.roll_number,name FROM faculty_information f,student_information s where s.advisor=f.employee_id
and ((f.gender='M' and f.salary>15000) or (f.gender='F' and f.salary>20000))


select  today.stock_code from tomorrow_price tomorrow, today_price today today where today.stock_code=tomorrow.stock_code and
tomorrow.price>today.price

