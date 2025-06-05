@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS HEADER'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@Metadata.allowExtensions: true
define view entity ZCDS_HEADER_4355
  as select from zheader1_4355 as Header
  association [0..*] to ZCDS_ITEM_4355 as _Item on Header.id_header = _Item.IdHeader
{
  key id_header     as IdHeader,
      email         as Email,
      first_name    as FirstName,
      last_name     as LastName,
      country       as Country,
      createon      as Createon,
      delivery_date as DeliveryDate,
      //    order_status as OrderStatus,
      case
      when order_status <1 then 0
        when order_status = 1 then 1
        when order_status = 2 then 2
        when order_status > 2 then 3
      else 0
      end           as OrderStatus,
      image_url     as ImageUrl,
      _Item
}
