@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_NRUE_CUSTO1'
//@Metadata.ignorePropagatedAnnotations: true
@UI: {
  headerInfo: {
    typeName: 'Employee',
    typeNamePlural: 'Employees',
    title: {
      type: #STANDARD,
      label: 'Employee',
      value: 'EmployeeId'
    }
  }
}
define view entity ZC_NRUE_CUSTO1
  as projection on ZI_NRUE_CUSTO1
{
      @UI.facet: [{ type: #IDENTIFICATION_REFERENCE }]

      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
  key EmployeeId,
      EmpSingleton,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      FirstName,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      LastName,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      Department,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      JoiningDate,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 60 }]
      IsActive,
      ChangedBy,
      LocalLastChangedAt,
      ChangedAt,
      /* Associations */
      _sEmp : redirected to parent ZC_SING_NRUE_CUSTO1
}
