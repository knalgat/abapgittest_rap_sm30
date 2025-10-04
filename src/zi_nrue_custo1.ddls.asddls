@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for ZNRUE_CUSTO1'
//@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZI_NRUE_CUSTO1
  as select from znrue_custo1
  association to parent ZI_SING_NRUE_CUSTO1 as _sEmp on $projection.EmpSingleton = _sEmp.EmpSingleTon
{
      @EndUserText.label : 'Employee ID'
  key employee_id           as EmployeeId,
      1                     as EmpSingleton,

      @EndUserText.label : 'First Name'
      first_name            as FirstName,
      @EndUserText.label : 'Last Name'
      last_name             as LastName,
      @EndUserText.label : 'Department'
      department            as Department,
      @EndUserText.label : 'Joining Date'
      joining_date          as JoiningDate,
      @EndUserText.label : 'Active Employee'
      is_active             as IsActive,
      @EndUserText.label : 'Changed By'
      @Semantics.user.lastChangedBy: true
      changed_by            as ChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at            as ChangedAt,
      _sEmp
}
