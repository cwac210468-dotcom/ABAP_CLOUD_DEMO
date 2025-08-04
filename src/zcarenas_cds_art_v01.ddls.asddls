@AbapCatalog.sqlViewName: 'ZCAC_CDS_CATAL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CORE DATA SERVICE'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
define view ZCARENAS_CDS_ART_V01 as select from zcarenas_tab_art
{
    
    key id_art as IdArt,
    descripcion as Descripcion,
    descripcion2 as Descripcion2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
     case
     when stock <= 0 then 0
     when stock between 1 and 10 then 1
     when stock between 11 and 99 then 2
     when stock >= 100 then 3
     else 0
     end as Status
}
