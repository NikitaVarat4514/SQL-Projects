create table students(
student_id number primary key,
first_name varchar2(20),
last_name varchar2(20) not null,
dob date,
gender varchar2(10),
class varchar2(10),
address varchar2(200),
contact_info varchar2(100)
);


insert into students (student_id, first_name, last_name, dob, gender, class, address, contact_info)
values(1,'sham','vare',TO_DATE('2008-04-15','YYYY-MM-DD'), 'female', '10A', 'panvel 001', '555-2345');

insert all  
into students values(2,'tejas','deshmukh',TO_DATE('2003-12-28','YYYY-MM-DD'), 'male', '10A', 'rasayani', '8767-3827')
into students values(3,'nikita','varat',TO_DATE('2003-10-16','YYYY-MM-DD'), 'female', '10A', 'rasayani', '7385-0745')
into students values(4,'mohini','lende',TO_DATE('2004-06-06','YYYY-MM-DD'), 'female', '10A', 'rasayani', '4343-2323')
into students values(5,'vishakha','rongare',TO_DATE('2003-05-31','YYYY-MM-DD'), 'female', '10B', 'panvel e01', '2121-4545')
into students values(6,'karan','medhekar',TO_DATE('2005-10-22','YYYY-MM-DD'), 'male', '10B', 'jatade rasyani', '1313-1414')
into students values(7,'ketan','choure',TO_DATE('2002-09-24','YYYY-MM-DD'), 'male', '10B', 'kalmboli B02', '4545-1414')
into students values(8,'ketan','patil',TO_DATE('2005-07-15','YYYY-MM-DD'), 'male', '10C', 'rasayani mohopada', '4646-6464')
into students values(9,'vishwata','rongare',TO_DATE('2001-05-31','YYYY-MM-DD'), 'female', '10C', 'panvel e01', '2525-5252')
into students values(10,'komal','kachare',TO_DATE('2000-11-06','YYYY-MM-DD'), 'female', '10C', 'uran sec 1', '1889-9876')
into students values(11,'prem','patil',TO_DATE('2004-09-03','YYYY-MM-DD'), 'male', '10C', 'pen', '4678-9876')
into students values(12,'rani','varat',TO_DATE('2000-04-14','YYYY-MM-DD'), 'female', '10A', 'rees abc 12', '7456-3452')
into students values(13,'vedarsh','gole',TO_DATE('2009-10-12','YYYY-MM-DD'), 'male', '10B', 'mumbai', '1889-7575')
into students values(14,'rinku','gole',TO_DATE('2000-10-03','YYYY-MM-DD'), 'female', '10D', 'vashi 001', '5678-0865')
into students values(15,'mohini','sharma',TO_DATE('2008-05-06','YYYY-MM-DD'), 'female', '10C', 'vashi', '5643-8765')
select * from students;


select * from students;

comment on column students.last_name is 'last_name of the students. A not null column';

comment on column students.dob is 'This is the birth date of students';

comment on column students.student_id is 'Primary Key of students table';

comment on column students.contact_info is 'Phone Number of the students Parents';

alter table students drop constraint SYS_C007728;

alter table students add constraint stu_id_pk primary key(student_id);

alter table students drop constraint SYS_C007727;

alter table students modify last_name constraint ln_stu_nn NOT NULL;


========================================

create table courses (
course_id number constraint ck_pk primary key,
course_name varchar2(20)
);

alter table courses add constraint ck_uk unique(course_name);

insert into courses values(101,'Marathi');

insert all
into courses values(102,'English')
into courses values(103,'Biology')
into courses values(104,'Mathematics')
into courses values(105,'Science')
into courses values(106,'History')
into courses values(107,'Geography')
into courses values(108,'Python')
into courses values(109,'SQL')
into courses values(110,'Chemistery')
select * from  courses;


comment on column courses.course_id is'Primary key of the courses table';

comment on column courses.course_name is'Course name should be Unique';
===============================================

create table teachers (
teacher_id number constraint tk_pk primary key,
first_name varchar2(10),
last_name varchar2(10) constraint ln_nn not null,
subject varchar2(10),
contact_info varchar2(20) constraint ck_info_uk unique
);

insert into teachers values(101,'shobha','patil','Marathi','123454321');

insert all 
into teachers values(102,'nita','kadam','English','123334321')
into teachers values(103,'nisha','sharma','P.T','123784321')
into teachers values(104,'abhishek','satpute','Biology','223454321')
into teachers values(105,'soham','more','Marathi','456454321')
into teachers values(106,'niki','deshmukh','Maths','983454321')
into teachers values(107,'tejas','deshmukh','Chemistery','088454321')
into teachers values(108,'nikita','varat','History','123564321')
into teachers values(109,'nitin','vare','Science','666454321')
into teachers values(110,'vishakha','patil','Geography','000454321')
select * from teachers;


comment on column teachers.last_name is'last_name of the teachers, A not null column';

comment on column teachers.teacher_id is'Primary Key of teachers table';

comment on column teachers.contact_info is'Contacts information should be unique';





============================================

create table enrollments (
enrollment_id number(20) constraint en_pk primary key,
student_id number references students(student_id),
course_id number references courses(course_id),
enrollment_date date,
status varchar2(40)
);

insert into enrollments values(1,1,101,to_date('2004-02-14','YYYY-MM-DD'),'enrolled');

insert all
into enrollments values(2,2,102,to_date('2005-11-16','YYYY-MM-DD'),'enrolled')
into enrollments values(3,3,103,to_date('2006-10-07','YYYY-MM-DD'),'enrolled')
into enrollments values(4,4,104,to_date('2007-08-07','YYYY-MM-DD'),'enrolled')
into enrollments values(5,5,105,to_date('2008-12-05','YYYY-MM-DD'),'enrolled')
into enrollments values(6,6,106,to_date('2002-05-23','YYYY-MM-DD'),'enrolled')
into enrollments values(7,7,107,to_date('2001-11-25','YYYY-MM-DD'),'enrolled')
into enrollments values(8,8,108,to_date('2004-02-21','YYYY-MM-DD'),'enrolled')
into enrollments values(9,9,109,to_date('2003-03-20','YYYY-MM-DD'),'enrolled')
into enrollments values(10,10,110,to_date('2008-09-03','YYYY-MM-DD'),'enrolled')
select * from enrollments;


comment on column enrollments.enrollment_id is'Primary Key of enrollments table';

comment on column enrollments.student_id is'student id of the enrollments. forigen key to student of students table.';

comment on column enrollments.course_id is'course id of the enrollments. forigen key to courses of students table.';



==========================================


create table attendance (
attendance_id number constraint ak_pk primary key,
enrollment_id number,
attendance_date date,
status varchar(20),
constraint en_fk foreign key (enrollment_id) references enrollments(enrollment_id)
);

insert into attendance values (11,1,to_date('2024-01-11','YYYY-MM-DD'),'present');

insert all
into attendance values (12,2,to_date('2024-01-10','YYYY-MM-DD'),'present')
into attendance values (13,3,to_date('2024-01-11','YYYY-MM-DD'),'absent')
into attendance values (14,4,to_date('2024-01-10','YYYY-MM-DD'),'present')
into attendance values (15,5,to_date('2024-01-12','YYYY-MM-DD'),'present')
into attendance values (16,6,to_date('2024-01-12','YYYY-MM-DD'),'absent')
into attendance values (17,7,to_date('2024-01-13','YYYY-MM-DD'),'absent')
into attendance values (18,8,to_date('2024-01-13','YYYY-MM-DD'),'present')
into attendance values (19,9,to_date('2024-01-11','YYYY-MM-DD'),'absent')
into attendance values (20,10,to_date('2024-01-10','YYYY-MM-DD'),'present')
select * from attendance;


comment on column attendance.attendance_id is'Primary Key of attendance table';

comment on column attendance.enrollment_id is'enrollment id of the attendance. forigen key to enrollment id of enrollments table.';

comment on column attendance.status is'Status of Students';



========================================================


create table teacher_courses (
teacher_course_id varchar2(10) constraint tkk_pk primary key,
teacher_id number,
course_id number,
constraint tk_fk foreign key (teacher_id) references teachers(teacher_id),
constraint ck_fk foreign key (course_id) references courses(course_id)
);

insert into teacher_courses values('E01',101,101);

insert all
into teacher_courses values('E02',102,102)
into teacher_courses values('E03',103,103)
into teacher_courses values('E04',104,104)
into teacher_courses values('E05',105,105)
into teacher_courses values('E06',106,106)
into teacher_courses values('E07',107,107)
into teacher_courses values('E08',108,108)
into teacher_courses values('E09',109,109)
into teacher_courses values('E10',110,110)
select * from teacher_courses;


comment on column teacher_courses.teacher_course_id is'Primary Key of teacher_courses table';

comment on column teacher_courses.teacher_id is'teacher id of the teacher_courses. forigen key to teacher id of teachers.';

comment on column teacher_courses.course_id is'course id of the teacher_courses. forigen key to course id of courses table.';

============================================