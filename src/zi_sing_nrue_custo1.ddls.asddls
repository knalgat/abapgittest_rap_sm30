@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Singleton interface view for ZI_NRUE_CUSTO1'
//@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_SING_NRUE_CUSTO1
  as select from    I_Language
  //to get the last changed date from the real custo table
    left outer join znrue_custo1 as zemp on 1 = 1

  composition [0..*] of ZI_NRUE_CUSTO1 as _emp
{
  key 1                    as EmpSingleTon,
      //to get the last changed date from the real custo table
      max(zemp.changed_at) as maxChangeDate,
      _emp
}
where
  I_Language.Language = $session.system_language
