DECLARE
   CURSOR brch_cursor
   IS
      SELECT city_id FROM branches;

   v_city_id        NUMBER (3);
   v_branch_bonus   NUMBER (12, 2);

   CURSOR emp_cursor
   IS
      SELECT branch_id, employee_id, employee_position FROM branch_employees;

   v_employee_id    NUMBER (3);
   v_branch_id      NUMBER (3);
   v_emp_type       VARCHAR2 (20);
   v_emp_bonus      NUMBER (10, 2);
BEGIN
   FOR brch_record IN brch_cursor
   LOOP
      v_city_id := brch_record.city_id;

      v_branch_bonus := brch_bonus_function (v_city_id);
      brch_bonus_proc (v_city_id, v_branch_bonus);
   END LOOP;


   FOR emp_record IN emp_cursor
   LOOP
      v_employee_id := emp_record.employee_id;
      v_branch_id := emp_record.branch_id;
      v_emp_type := emp_record.employee_position;

      v_emp_bonus := emp_type_bonus (v_branch_id, v_emp_type, v_branch_bonus);

      up_emp_bonus (v_employee_id, v_emp_bonus);
   END LOOP;
END;
