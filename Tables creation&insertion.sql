CREATE TABLE HR.CITIES
(
  CITY_ID     NUMBER(6),
  CITY_NAME   VARCHAR2(100 BYTE),
  CITY_BONUS  NUMBER(10,2),
  CONSTRAINT CITIES_PK
 PRIMARY KEY
 (CITY_ID)
);


CREATE TABLE HR.BRANCHES
(
  BRANCH_ID     NUMBER(6),
  BRANCH_NAME   VARCHAR2(250 BYTE),
  CITY_ID       NUMBER(6),
  BRANCH_BONUS  NUMBER(10,2),
  CONSTRAINT BRANCHES_PK
 PRIMARY KEY
 (BRANCH_ID),
  CONSTRAINT BRANCHES_R01 
 FOREIGN KEY (CITY_ID) 
 REFERENCES HR.CITIES (CITY_ID)
);


CREATE TABLE HR.BRANCH_EMPLOYEES
(
  EMPLOYEE_ID        NUMBER(6),
  EMPLOYEE_NAME      VARCHAR2(250 BYTE),
  EMPLOYEE_POSITION  VARCHAR2(250 BYTE),
  BRANCH_ID          NUMBER(6),
  EMPLOYEE_BONUS     NUMBER(10,2),
  CONSTRAINT BRANCH_EMPLOYEES_PK
 PRIMARY KEY
 (EMPLOYEE_ID),
  CONSTRAINT BRANCH_EMPLOYEES_R01 
 FOREIGN KEY (BRANCH_ID) 
 REFERENCES HR.BRANCHES (BRANCH_ID)
);



Insert into HR.CITIES
   (city_id, city_name, city_bonus)
 Values
   (1, 'Cairo', 1000000);
Insert into HR.CITIES
   (city_id, city_name, city_bonus)
 Values
   (2, 'Alex', 5000000);
Insert into HR.CITIES
   (city_id, city_name, city_bonus)
 Values
   (3, 'Mansoura', 9000000);
Insert into HR.CITIES
   (city_id, city_name, city_bonus)
 Values
   (4, 'Suez', 14000000);
   





Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (1, 'Cairo - 1', 1, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (2, 'Cairo - 2', 1, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (3, 'Alex - 1', 2, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (4, 'Mansoura - 1', 3, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (5, 'Mansoura - 2', 3, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (6, 'Suez - 1', 4, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (7, 'Suez - 2', 4, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (8, 'Suez - 3', 4, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (9, 'Cairo - 3', 1, NULL);
Insert into HR.BRANCHES
   (branch_id, branch_name, city_id, branch_bonus)
 Values
   (10, 'Cairo - 4', 1, NULL);





Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (1, 'emp - 1 - CAIRO 1', 'MGR', 1, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (2, 'emp - 2 - CAIRO 1', 'MGR', 1, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (3, 'emp - 3 - CAIRO 1', 'EMP', 1, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (4, 'emp - 4 - CAIRO 1', 'EMP', 1, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (5, 'emp - 5 - CAIRO 1', 'EMP', 1, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (6, 'emp - 6 - CAIRO 2', 'EMP', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (7, 'emp - 7 - CAIRO 2', 'EMP', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (8, 'emp - 8 - CAIRO 2', 'EMP', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (9, 'emp - 9 - CAIRO 2', 'EMP', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (10, 'emp - 10 - CAIRO 2', 'MGR', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (11, 'emp - 11 - CAIRO 2', 'MGR', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (12, 'emp - 12 - CAIRO 2', 'MGR', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (13, 'emp - 13 - CAIRO 2', 'EMP', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (14, 'emp - 14 - CAIRO 2', 'EMP', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (15, 'emp - 15 - CAIRO 2', 'EMP', 2, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (16, 'emp - 16 - Alex 1', 'MGR', 3, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (17, 'emp - 17 - Alex 1', 'MGR', 3, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (18, 'emp - 18 - Alex 1', 'EMP', 3, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (19, 'emp - 19 - Alex 1', 'EMP', 3, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (20, 'emp - 20 - Alex 1', 'EMP', 3, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (21, 'emp - 21 - Mansoura 1', 'EMP', 4, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (22, 'emp - 22 - Mansoura 1', 'EMP', 4, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (23, 'emp - 23 - Mansoura 1', 'EMP', 4, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (24, 'emp - 24 - Mansoura 1', 'EMP', 4, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (25, 'emp - 25 - Mansoura 1', 'EMP', 4, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (26, 'emp - 26 - Mansoura 1', 'EMP', 4, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (27, 'emp - 27 - Mansoura 1', 'MGR', 4, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (28, 'emp - 28 - Mansoura 2', 'EMP', 5, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (29, 'emp - 29 - Mansoura 2', 'EMP', 5, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (30, 'emp - 30 - Mansoura 2', 'EMP', 5, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (31, 'emp - 31 - Mansoura 2', 'MGR', 5, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (32, 'emp - 32 - Mansoura 2', 'MGR', 5, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (33, 'emp - 33 - Suez 1', 'EMP', 6, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (34, 'emp - 34 - Suez 1', 'MGR', 6, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (35, 'emp - 35 - Suez 1', 'EMP', 6, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (36, 'emp - 36 - Suez 1', 'MGR', 6, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (37, 'emp - 37 - Suez 2', 'EMP', 7, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (38, 'emp - 38 - Suez 2', 'MGR', 7, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (39, 'emp - 39 - Suez 2', 'EMP', 7, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (40, 'emp - 40 - Suez 2', 'EMP', 7, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (41, 'emp - 41 - Suez 2', 'MGR', 7, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (42, 'emp - 42 - Suez 2', 'MGR', 7, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (43, 'emp - 43 - Suez 2', 'EMP', 7, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (44, 'emp - 44 - Suez 3', 'MGR', 8, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (45, 'emp - 45 - Suez 3', 'EMP', 8, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (46, 'emp - 46 - Suez 3', 'EMP', 8, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (47, 'emp - 47 - Suez 3', 'MGR', 8, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (48, 'emp - 48 - Suez 3', 'EMP', 8, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (49, 'emp - 49 - Cairo 3', 'MGR', 9, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (50, 'emp - 50 - Cairo 3', 'EMP', 9, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (51, 'emp - 51 - Cairo 3', 'MGR', 9, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (52, 'emp - 52 - Cairo 3', 'EMP', 9, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (53, 'emp - 53 - Cairo 3', 'EMP', 9, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (54, 'emp - 54 - Cairo 3', 'MGR', 9, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (55, 'emp - 55 - Cairo 3', 'EMP', 9, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (56, 'emp - 56 - Cairo 4', 'MGR', 10, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (57, 'emp - 57 - Cairo 4', 'MGR', 10, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (58, 'emp - 58 - Cairo 4', 'EMP', 10, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (59, 'emp - 59 - Cairo 4', 'EMP', 10, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (60, 'emp - 60 - Cairo 4', 'MGR', 10, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (61, 'emp - 61 - Cairo 4', 'EMP', 10, NULL);
Insert into HR.BRANCH_EMPLOYEES
   (employee_id, employee_name, employee_position, branch_id, employee_bonus)
 Values
   (62, 'emp - 62 - Cairo 4', 'MGR', 10, NULL);


commit;
