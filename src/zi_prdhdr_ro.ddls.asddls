@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product Header Interface view Read only'
define root view entity Zi_Prdhdr_Ro
  as select from zprod_hdr
{
  key itemid                          as Itemid,
      itemname                        as Itemname,
      itemclass                       as Itemclass,
      // Calculate Lifetime
      cast(
      case itemclass
       when 'ELECTRONICS' then
        case when itemsclass like 'CAMERA&LENS'  then 6
         when itemsclass like 'MOBILE COMMUNICATION DEVICES'  then 4
         when itemsclass like 'GAMING CONSOLES'  then 2 end
       when 'FASHION'     then 3
      when 'MOTORS&VEHICLES' then 12
      end        as  abap.int1( 3 ) ) as Lifetime,
      itemsclass                      as Itemsclass,
      manftr                          as Manftr,
      mnfaddr                         as Mnfaddr
}
