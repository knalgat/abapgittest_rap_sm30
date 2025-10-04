@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZC_SING_NRUE_CUSTO1'
//@Metadata.ignorePropagatedAnnotations: true
@UI: {
  headerInfo: {
    typeName: 'Manage Employee',
    typeNamePlural: 'Employee Singleton',
    title: {
      type: #STANDARD,
      value: 'EmpSingleTon'
    }
  }
}
define root view entity ZC_SING_NRUE_CUSTO1
  provider contract transactional_query
  as projection on ZI_SING_NRUE_CUSTO1
{
      @UI.facet: [
        {
          purpose: #STANDARD,
          type: #LINEITEM_REFERENCE,
          label: 'Employee Inline Edit',
          position: 10,
          targetElement: '_emp'
        }
      ]

      @UI.lineItem: [{ position: 10 }]
  key EmpSingleTon,
      maxChangeDate,

      /* Associations */
      _emp : redirected to composition child ZC_NRUE_CUSTO1
}
