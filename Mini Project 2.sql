create database bank;
use bank;
show tables;


create table Bank_Details(Branch_code Numeric(30),Address Varchar(100),Department_id Numeric(30) , Branch_name Varchar(220),State Varchar(200),
Primary key(Branch_code),
Foreign key(Department_id) references Department(Department_id));

 Create table Employees (Employee_id Numeric(30),First_name varchar(220),Department_id numeric(30),Manager_id Numeric(30),
Job_id varchar(240), Email varchar(300),Hire_Date Date,Phone_no varchar(130), Salary Numeric(30),
primary key( Employee_id), 
foreign key(Department_id) references Department(Department_id),
foreign key (Job_id) references Job_Details(Job_id));


Create table Customer (Account_No Numeric(30),First_Name varchar(220),City varchar(210),Branch_code Numeric(30),
Employee_id Numeric(30),Phone_no varchar(200), ATM_NO Numeric(30) unique,Exp_date Date,Pin_No Numeric(30) Unique,
primary key(Account_No), Foreign key(Branch_code) references Bank_Details(Branch_code), Foreign key (Employee_id) references Employees(Employee_id));
 
 Create table Department(Department_id Numeric(30),Department_name varchar(230),Manager_id NUMERIC (60),Employee_id Numeric(60),Account_no Numeric(50),
primary key (Department_id), Foreign key (Account_no) references Account_Type(Account_no));


Create table Job_Details (Job_id varchar(240) ,Department_id Numeric(30),Branch_code Numeric(30),
primary key (Job_id),
foreign key (Department_id) references Department(Department_id));


Create table Account_Type (Account_no Numeric(30),Type_Account varchar(220),Manager_id Numeric(30),Department_name varchar(200),Opening_Date Date,
primary key (Account_no));


SET FOREIGN_KEY_CHECKS=0;
 INSERT INTO Bank_Details (Branch_code, Address,Department_id, Branch_name, State) VALUES 
 ('100', 'Ngapur', '1', 'ICIC_N', 'Maharashtra'),
 ('101', 'pune', '1', 'ICIC_P', 'Maharashtra'),
 ('102', 'Mumbai', '1', 'ICIC_M', 'Maharashtra'),
 ('103', 'delhi', '1', 'ICIC_D', 'DEL'),
 ('104', 'Mumbai', '1', 'ICIC_M', 'Maharashtra'),
 ('105', 'delhi', '1', 'ICIC_D', 'DEL'),
 ('106', 'Ngapur', '1', 'ICIC_N', 'Maharashtra'),
 ('107', 'pune', '8', 'ICIC_P', 'Maharashtra'),
 ('108', 'Mumbai', '8', 'ICIC_M', 'Maharashtra'),
 ('109', 'Ngapur', '8', 'ICIC_N', 'Maharashtra'),
 ('110', 'pune', '11', 'ICIC_P', 'Maharashtra'),
 ('111', 'Mumbai', '11', 'ICIC_M', 'Maharashtra'),
 ('112', 'delhi', '11', 'ICIC_D', 'DEL'),
 ('113', 'Ngapur', '11', 'ICIC_N', 'Maharashtra'),
 ('114', 'pune', '11', 'ICIC_P', 'Maharashtra'),
 ('115', 'Mumbai', '16', 'ICIC_M', 'Maharashtra'),
 ('116', 'Ngapur', '16', 'ICIC_N', 'Maharashtra'),
 ('117', 'pune', '16', 'ICIC_P', 'Maharashtra'),
 ('118', 'Mumbai', '19', 'ICIC_M', 'Maharashtra'),
 ('119', 'delhi', '19', 'ICIC_D', 'DEL'),
 ('120', 'Pune', '21', 'ICIC_P', 'Maharashtra');
 
 

Insert into Department (Department_id,Department_name,Manager_id ,Employee_id, Account_no) values
 ('1', 'Account', '20', '50', '12345'),
 ('8', 'Loan', '21', '51', '67899'),
 ('11', 'HR', '22', '52', '10112'),
 ('16', 'Admin', '23', '53', '13145'),
 ('19', 'Sales', '24', '54', '15167'),
 ('21', 'Security', '25', '55', '18190');
 
 
 

 Insert into Employees(Employee_id,First_name, Department_id,Manager_id, Job_id, Email,Hire_Date,Phone_no,Salary) values
 ('50', 'Samuel', '1', '20', 'ST_CLERK', 'SMCCAIN', STR_TO_DATE('23-Nov-07', '%d-%M-%Y'), '650.505.1876', '3800'),
 ('51', 'Allan', '8', '21', 'ST_CLERK', 'SSEWALL', STR_TO_DATE('30-Jan-04', '%d-%M-%Y'), '650.505.2876', '3600'),
 ('52', 'Irene', '11', '22', 'ST_CLERK', 'SSTILES',STR_TO_DATE('04-Mar-04', '%d-%M-%Y'), '650.505.3876', '2900'),
 ('53', 'Kevin', '16', '23', 'ST_CLERK', 'STOBIAS', STR_TO_DATE('01-Aug-04', '%d-%M-%Y'), '650.505.4876', '2500'),
 ('54', 'Julia', '19', '24', 'ST_CLERK', 'SVOLLMAN', STR_TO_DATE('10-Mar-05', '%d-%M-%Y'), '650.501.1876', '4000'),
 ('55', 'Donald', '21', '25', 'ST_CLERK', 'TFOX', STR_TO_DATE('15-Dec-05', '%d-%M-%Y'), '650.501.2876', '3900'),
 ('56', 'Christopher', '1', '26', 'ST_CLERK', 'TGATES', STR_TO_DATE('03-Nov-06', '%d-%M-%Y'), '650.501.3876', '3200'),
 ('57', 'TJ', '8', '27', 'ST_MAN', 'TJOLSON', STR_TO_DATE('11-Nov-05'STR_TO_DATE), '650.501.4876', '2800'),
 ('58', 'Lisa', '11', '28', 'ST_MAN', 'TRAJS', STR_TO_DATE('19-Mar-07', '%d-%M-%Y'), '650.507.9811', '3100'),
 ('59', 'Karen', '16', '29', 'ST_MAN', 'VJONES', STR_TO_DATE('24-Jan-08', '%d-%M-%Y'), '650.507.9822', '3000'),
 ('60', 'Valli', '19', '30', 'ST_MAN', 'VPATABAL', STR_TO_DATE('23-Feb-08', '%d-%M-%Y'), '650.507.9833', '2600'),
 ('61', 'Joshua', '21', '31', 'ST_MAN', 'WGIETZ', STR_TO_DATE('01-May-03', '%d-%M-%Y'), '650.507.9844', '6400'),
 ('62', 'Randall', '1', '32', 'FI_ACCOUNT', 'WSMITH', STR_TO_DATE('10-Oct-05', '%d-%M-%Y'), '515.123.4444', '6200'),
 ('63', 'Hazel', '8', '33', 'FI_ACCOUNT', 'WTAYLOR', STR_TO_DATE('16-Nov-07', '%d-%M-%Y'), '515.123.5555', '11500'),
 ('64', 'Luis', '11', '34', 'FI_ACCOUNT', 'JNAYER', STR_TO_DATE('16-Jul-05', '%d-%M-%Y'), '603.123.6666', '10000'),
 ('65', 'Trenna', '16', '35', 'FI_ACCOUNT', 'JPATEL', STR_TO_DATE('28-Sep-06', '%d-%M-%Y'), '515.123.7777', '9600'),
 ('66', 'Den', '19', '36', 'FI_ACCOUNT', 'JRUSSEL', STR_TO_DATE('14-Jan-07', '%d-%M-%Y'), '515.123.8888', '7400'),
 ('67', 'Michael', '21', '37', 'SA_REP', 'JSEO', STR_TO_DATE('08-Mar-08', '%d-%M-%Y'), '515.123.8080', '7300'),
 ('68', 'John', '1', '38', 'SA_REP', 'JTAYLOR', STR_TO_DATE('20-Aug-05', '%d-%M-%Y'), '011.44.1346.329268', '6100'),
 ('69', 'Nandita', '8', '39', 'SA_REP', 'JWHALEN', STR_TO_DATE('30-Oct-05', '%d-%M-%Y'), '011.44.1346.529268', '11000'),
 ('70', 'Ismael', '11', '40', 'SA_REP', 'KCHUNG', STR_TO_DATE('16-Feb-05', '%d-%M-%Y'), '011.44.1346.52', '8800');
 
 
 
 
 Insert into customer(Account_No, First_Name, City, Branch_code, Employee_id, Phone_no, ATM_NO,Exp_date,Pin_No) values
 ( '12345', 'Samuel', 'Ngapur', '100', '50', '650.505.1876', '423705689', STR_TO_DATE('23-Apr-06', '%d-%M-%Y'), '5689'),
 ( '67899', 'Allan', 'pune', '101', '51', '650.505.2876', '423568971', STR_TO_DATE('24-May-07', '%d-%M-%Y'), '8971'),
 ( '10112', 'Irene', 'Mumbai', '102', '52', '650.505.3876', '423432253', STR_TO_DATE('04-Jan-08', '%d-%M-%Y'), '12253'),
 ( '13145', 'Kevin', 'delhi', '103', '53', '650.505.4876', '423295535', STR_TO_DATE('24-Jan-06', '%d-%M-%Y'), '15535'),
 ( '15167', 'Julia', 'Mumbai', '104', '54', '650.501.1876', '423158817', STR_TO_DATE('23-Feb-06', '%d-%M-%Y'), '18817'),
 ( '18190', 'Donald', 'delhi', '105', '55', '650.501.2876', '423022099', STR_TO_DATE('21-Jun-07', '%d-%M-%Y'), '22099'),
 ( '20210', 'Christopher', 'Ngapur', '106', '56', '650.501.3876', '422885381', STR_TO_DATE('03-Feb-08', '%d-%M-%Y'), '25381'),
 ( '22230', 'TJ', 'pune', '107', '57', '650.501.4876', '422748663', STR_TO_DATE('27-Jan-04', '%d-%M-%Y'), '28663'),
 ( '24250', 'Lisa', 'Mumbai', '108', '58', '650.507.9811', '422611945', STR_TO_DATE('20-Feb-05', '%d-%M-%Y'), '31945'),
 ( '26270', 'Karen', 'Ngapur', '109', '59', '650.507.9822', '422475227', STR_TO_DATE('24-Jun-06', '%d-%M-%Y'), '35227'),
 ( '28290', 'Valli', 'pune', '110', '60', '650.507.9833', '422338509', STR_TO_DATE('07-Feb-07', '%d-%M-%Y'), '38509'),
 ( '30310', 'Joshua', 'Mumbai', '111', '61', '650.507.9844', '422201791', STR_TO_DATE('13-Jan-08', '%d-%M-%Y'), '41791'),
 ( '32330', 'Randall', 'delhi', '112', '62', '515.123.4444', '422065073', STR_TO_DATE('17-Sep-03', '%d-%M-%Y'), '45073'),
 ( '34350', 'Hazel', 'Ngapur', '113', '63', '515.123.5555', '421928355', STR_TO_DATE('17-Feb-04', '%d-%M-%Y'), '48355'),
 ( '36370', 'Luis', 'pune', '114', '64', '603.123.6666', '421791637', STR_TO_DATE('17-Aug-05', '%d-%M-%Y'), '51637'),
 ( '38390', 'Trenna', 'Mumbai', '115', '65', '515.123.7777', '421654919', STR_TO_DATE('07-Jun-02', '%d-%M-%Y'), '54919'),
 ( '40410', 'Den', 'Ngapur', '116', '66', '515.123.8888', '421518201', STR_TO_DATE('07-Jun-02', '%d-%M-%Y'), '58201'),
 ( '42430', 'Michael', 'pune', '117', '67', '515.123.8080', '421381483', STR_TO_DATE('07-Jun-02', '%d-%M-%Y'), '61483'),
 ( '44450', 'John', 'Mumbai', '118', '68', '011.44.1346.329268', '421244765', STR_TO_DATE('07-Jun-02', '%d-%M-%Y'), '64765'),
 ( '46470', 'Nandita', 'delhi', '119', '69', '011.44.1346.529268', '421108047', STR_TO_DATE('21-Apr-08', '%d-%M-%Y'), '68047'),
 ( '48490', 'Ismael', 'Pune', '120', '70', '011.44.1346.52', '420971329', STR_TO_DATE('11-Mar-05', '%d-%M-%Y'), '71329');
 
 
 
 
Insert into Job_Details (Job_id, Department_id, Branch_code) values
 ('ST_CLERK', '1', '101'),
 ('ST_MAN', '8', '108'),
 ('FI_ACCOUNT', '11', '113'),
 ('SA_REP', '19', '118');
 
 
 

 insert into Account_Type(Account_no, Type_Account, Manager_id, Department_name, Opening_Date) values
 ('12345', 'Saving', '20', 'Account', STR_TO_DATE('23-Apr-03', '%d-%M-%Y')),
 ('67899', 'loan', '21', 'Loan', STR_TO_DATE('24-May-04', '%d-%M-%Y')),
 ('10112', 'Saving', '22', 'HR', STR_TO_DATE('04-Jan-06', '%d-%M-%Y')),
 ('13145', 'loan', '23', 'Admin', STR_TO_DATE('23-Apr-03', '%d-%M-%Y')),
 ('15167', 'current', '24', 'Sales', STR_TO_DATE('24-May-04', '%d-%M-%Y')),
 ('18190', 'business', '25', 'Security', STR_TO_DATE('04-Jan-06', '%d-%M-%Y')),
 ('20210', 'loan', '26', 'Account', STR_TO_DATE('23-Apr-03', '%d-%M-%Y')),
 ('22230', 'Saving', '27', 'Loan', STR_TO_DATE('24-May-04', '%d-%M-%Y')),
 ('24250', 'loan', '28', 'HR', STR_TO_DATE('04-Jan-06', '%d-%M-%Y')),
 ('26270', 'current', '29', 'Admin', STR_TO_DATE('23-Apr-03', '%d-%M-%Y')),
 ('28290', 'business', '30', 'Sales', STR_TO_DATE('24-May-04', '%d-%M-%Y')),
 ('30310', 'current', '31', 'Security', STR_TO_DATE('04-Jan-06', '%d-%M-%Y')),
 ('32330', 'Saving', '32', 'Account', STR_TO_DATE('23-Apr-03', '%d-%M-%Y')),
 ('34350', 'loan', '33', 'Loan', STR_TO_DATE('24-May-04', '%d-%M-%Y')),
 ('36370', 'current', '34', 'HR', STR_TO_DATE('04-Jan-06', '%d-%M-%Y')),
 ('38390', 'current', '35', 'Admin', STR_TO_DATE('23-Apr-03', '%d-%M-%Y')),
 ('40410', 'business', '36', 'Sales', STR_TO_DATE('24-May-04', '%d-%M-%Y')),
 ('42430', 'loan', '37', 'Security', STR_TO_DATE('04-Jan-06', '%d-%M-%Y')),
 ('44450', 'Saving', '38', 'Account', STR_TO_DATE('23-Apr-03', '%d-%M-%Y')),
 ('46470', 'loan', '39', 'Loan', STR_TO_DATE('24-May-04', '%d-%M-%Y')),
 ('48490', 'Saving', '40', 'HR', STR_TO_DATE('04-Jan-06', '%d-%M-%Y'));
 
 
 
 show tables;
 
 # Find an employee’s whose id is 52 and branch name is icicp
 describe employees;
 describe Bank_Details;
 SELECT  First_name,Department_id,Branch_name
FROM  Bank_Details natural JOIN Employees
where ( Branch_name ='ICIC_P' and Employee_id =52);

# Count the number of employees working in the loan department
# and show its opening dates and address.


select 
Employees.First_name,
Account_Type.Department_name,
Account_Type.Opening_Date,
Bank_Details.Address
from  Account_type
join Bank_details,Employees 
where Account_Type.Department_name='Loan'
group by Employees.First_name ;

select distinct count(First_name)
from (select 
Employees.First_name,
Account_Type.Department_name,
Account_Type.Opening_Date,
Bank_Details.Address
from  Account_type
join Bank_details,Employees 
where Account_Type.Department_name='Loan'
group by Employees.First_name)as count_1;





 
 
# Find details department name, address, branch code, dept _id,
# city of the account no 18190.

select 
Department.Department_name,
Bank_Details.Address,
Bank_Details.Branch_code,
Department.Department_id,
Customer.Account_No,
Customer.City 
from Bank_Details
join Department,Customer
where (Customer.Account_No='18190')
group by Department.Department_name ;


# Find department id, department name, job id whose only work in
# Loan, HR, admin.


select 
Department.Department_id,
Department.Department_name,
Job_Details.Job_id
from department 
join Job_Details
where Department_name='Loan' or 
Department_name='HR' or
Department_name='Admin';


# Find the type_account, state account number whose atm no
# 422748663


Select 
Account_Type.Type_Account,
Bank_Details.State,
Account_Type.Account_no,
Customer.ATM_NO
from Account_Type
join Bank_Details,Customer
where Customer.ATM_NO=422748663 ;


-- Create a view with that show address, branch name, department
--  name, first name. phone no.


create view view_1 as
select 
Bank_Details.Address,
Bank_Details.Branch_name,
Department.Department_name,
Customer.First_Name,
Customer.Phone_no
from Bank_Details
join Department,Customer;

Select * from view_1;


-- Create view city, department name whose opening date is less
-- than 24 May 04

select * from Account_Type;


create view view_2 as
select 
Customer.City,
Account_Type.Department_name,
Account_Type.Opening_Date
from Account_Type
join Customer
where (Account_Type.Opening_Date < '24-05-04' );

select * from view_2;


-- Create view only job id for clerk, manager, an accountant with all
-- detail and name it employee job_deatils

select * from job_Details;

drop view employee_job_details; 
create view employee_job_details as
select * from Job_Details
where Job_id='ST_CLERK' or 
Job_id='ST_MAN' or 
Job_id='FI_ACCOUNT';

select * from employee_job_details;



-- In the job details change the atm pin 423295535 with 42321992



 Update Customer
SET 
    ATM_NO = 42321992
Where (ATM_NO= 423295535);

select Job_Details.Job_id,
Job_Details.Department_id,
Job_Details.Branch_code,
Customer.ATM_NO
from Job_Details
join Customer;


--  In the job, details change all sales account into admin and
-- account type into saving

select * from Job_Details;

set sql_safe_updates=0;
update Account_Type
set Department_name='Admin' , Type_Account='Saving'
where Department_name='Sales';

select Job_Details.Job_id,
Job_Details.Department_id,
Job_Details.Branch_code,
Account_Type.Type_Account,
Account_Type.Department_name
from Job_Details
join Account_Type;






 


















 

 








