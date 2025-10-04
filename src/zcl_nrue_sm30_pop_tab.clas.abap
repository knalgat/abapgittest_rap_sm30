CLASS zcl_nrue_sm30_pop_tab DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_nrue_sm30_pop_tab IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: t_tmp TYPE TABLE OF znrue_custo1.
    t_tmp = VALUE #(
      ( employee_id = 1 first_name = 'Joske' last_name = 'Petrol'   department = 'ACT' joining_date = '20200101' is_active = 'X' changed_at = '20200101' )
      ( employee_id = 2 first_name = 'Rita' last_name = 'Frita'     department = 'ACT' joining_date = '20200201' is_active = 'X' changed_at = '20200201' )
      ( employee_id = 3 first_name = 'Boris' last_name = 'Floris'   department = 'ACT' joining_date = '20200301' is_active = ''  changed_at = '20200301' )
    ).
    INSERT znrue_custo1 FROM TABLE @t_tmp.
    COMMIT WORK AND WAIT.
  ENDMETHOD.
ENDCLASS.
