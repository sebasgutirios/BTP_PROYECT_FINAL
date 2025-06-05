@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DESCRIPTION'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Metadata.allowExtensions: true
define view entity ZCDS_ITEM_4355 as select from zitem_4355
{
    key id_header as IdHeader,
    key id_item as IdItem,
    name as Name,
    description as Description,
    release_date as ReleaseDate,
    discontinued_date as DiscontinuedDate,
    price as Price,
    @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
    height as Height,
    @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
    width as Width,
    depth as Depth,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure
}
