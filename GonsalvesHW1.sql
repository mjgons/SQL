# Question 1
# Answer: HNL
SELECT dest FROM flights ORDER BY distance DESC LIMIT 1;

# Question 2
# Answers: 4 engines, 1 engine= 16 seats (model PA-32R-300), 2 engines= 400 seats (model 777)
# 3 engines=379 seats (model A330), 450 seats (model 747).
SELECT DISTINCT engines FROM planes ORDER BY engines;
SELECT model, seats FROM planes WHERE engines = 1 ORDER BY seats DESC;
SELECT model, seats FROM planes WHERE engines = 2 ORDER BY seats DESC;
SELECT model, seats FROM planes WHERE engines = 3 ORDER BY seats DESC;
SELECT model, seats FROM planes WHERE engines = 4 ORDER BY seats DESC;

#Question 3
# Answer: 336,776
SELECT COUNT(*) FROM flights; 

#Question 4
# Answer: Table shows breakdown of flights by carrier which equal the total 336,776 flights
SELECT carrier, COUNT(year) FROM flights GROUP BY carrier ORDER BY carrier;

#Question 5
# Answer: Table shows breakdown with UA at the top and OO at the bottom
SELECT carrier, COUNT(year) FROM flights GROUP BY carrier ORDER BY COUNT(year) DESC;

#Question 6
# Answer UA, B6, EV, DL, AA
SELECT carrier, COUNT(year) FROM flights GROUP BY carrier ORDER BY COUNT(year) DESC LIMIT 5;

#Question 7
# Answer UA, B6, DL, AA, EV (different carriers with a lower flight number for each as only looking >= 1000)
SELECT carrier, COUNT(year) FROM flights WHERE distance >= 1000 GROUP BY carrier ORDER BY COUNT(year) DESC LIMIT 5;

#Question 8a: What was the average departure delay by airline?  Order by highest average delay to lowest agerage delay.
# Answer F9 a little more than 20 minutes late on departure.
SELECT carrier, AVG(dep_delay) FROM flights GROUP BY carrier ORDER BY AVG(dep_delay) DESC;

#Question 8b: What was the average arrival delay by airline?
# Answer F9 almost 22 minutes late on arrival.
SELECT carrier, AVG(arr_delay) FROM flights GROUP BY carrier ORDER BY AVG(arr_delay) DESC;