create database titanic_db;
use titanic_db;
select count(*) from titanic;

-- total passengers
select count(*) as total_passengers from titanic;

select *from titanic limit 10;

-- passengers  survived
select Survived, count(*) as total
from titanic
group by Survived;

-- male and femal passengers
select sex, count(*) as total
from titanic
group by sex;

-- maximum ticket fare
select max(Fare) as 
highest_fare 
from titanic;

-- survival by gender
select sex,survived,count(*)
as total
from titanic
group by sex,survived
order by sex,survived;

-- first_class passengers
select * from titanic
where Pclass = 1;

-- totalpassengers in class
select Pclass, count(*) as total_passengers
from titanic 
group by Pclass
order by Pclass;

-- passengers age
select count(*) as total 
from titanic
where age < 18;

-- age by child , adult, senior
select 
   case 
       when age < 18 then 'child'
       when age between 18 and 59 then 'Adult'
       when age >=60 then 'Senior'
       else 'unknoun'
       end as age_group,count(*) as total
from titanic 
group by age_group;

-- passenger without sibling spouse
select count(*) as total 
from titanic 
where SibSp = 0;

-- total passenger w.r.t sibling
select SibSp, count(*) as total 
from titanic 
group by SibSp
order by sibSp;

-- without parents and child
select count(*) as total 
from titanic 
where Parch = 0;

select Parch, count(*) as total
from titanic 
group by Parch
order by Parch;

-- boarding station pssengers
select Embarked, count(*) as total 
from titanic 
group by Embarked;

-- survival w.r.t class
select Pclass,Survived,
count(*) as total 
from titanic 
group by Pclass, Survived
order by Pclass, Survived;

-- boarding station age
select Embarked, avg(Age) as average_age
from titanic
group by Embarked;

-- class and survival age less than 18
select Pclass,Survived, count(*) as total
from titanic 
where Age < 18
group by Pclass, Survived
order by Pclass, Survived;
