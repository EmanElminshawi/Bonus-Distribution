CREATE OR REPLACE FUNCTION brch_bonus_function(v_city_id NUMBER)
RETURN NUMBER
IS 
  v_no_brch NUMBER(3);
  v_city_bonus NUMBER(12, 2);
  v_brch_bonus NUMBER(12, 2);
BEGIN
  SELECT COUNT(*) INTO v_no_brch
  FROM branches
  WHERE city_id = v_city_id;

  SELECT city_bonus INTO v_city_bonus
  FROM cities
  WHERE city_id = v_city_id;

  v_brch_bonus := v_city_bonus / v_no_brch;

  RETURN v_brch_bonus;
END;

CREATE OR REPLACE PROCEDURE brch_bonus_proc(v_city_id NUMBER, v_brch_bonus NUMBER)
IS 
BEGIN
  UPDATE branches SET branch_bonus = v_brch_bonus
  WHERE city_id = v_city_id;
END;


CREATE OR REPLACE FUNCTION emp_type_bonus(v_branch_id NUMBER, v_emp_type VARCHAR2, v_branch_bonus NUMBER)
RETURN NUMBER
IS
   v_count NUMBER(3);
   v_type_bonus NUMBER(10, 2);
BEGIN
   SELECT COUNT(*)
   INTO v_count
   FROM branch_employees
   WHERE branch_id = v_branch_id AND employee_position = v_emp_type;
    
   IF v_emp_type = 'MGR' THEN 
   v_type_bonus := v_branch_bonus*0.5 / v_count;
   ELSE
   v_type_bonus := v_branch_bonus*0.5 / v_count;
      
    END IF;
    RETURN v_type_bonus;
END;


CREATE OR REPLACE PROCEDURE up_emp_bonus(v_employee_id NUMBER, v_emp_bonus NUMBER)
IS
BEGIN
UPDATE branch_employees SET employee_bonus = v_emp_bonus
WHERE employee_id = v_employee_id;
END; 

