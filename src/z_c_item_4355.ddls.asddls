@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONSUMPTION ITEM ENTITY'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
define view entity Z_C_ITEM_4355
  as projection on Z_R_ITEM_4355
{
  key IdItem,
      IdHeader,
      Name,
      Description,
      ReleaseDate,
      DiscontinuedDate,
      Price,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      Height,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      Width,
      Depth,
      Quantity,
      Unitofmeasure,
      /* Associations */
      _header : redirected to parent Z_C_HEADER_4355
}
