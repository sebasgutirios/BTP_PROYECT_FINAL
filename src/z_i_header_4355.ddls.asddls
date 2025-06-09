@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ITERFACE HEADER ENTITY'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_HEADER_4355
provider contract transactional_interface
  as projection on Z_R_HEADER_4355
{
  key IdHeader,
      Email,
      FirstName,
      LastName,
      Country,
      Createon,
      DeliveryDate,
      OrderStatus,
      ImageUrl,
      /* Associations */
      _Status,
      _items : redirected to composition child Z_I_ITEM_4355
}
