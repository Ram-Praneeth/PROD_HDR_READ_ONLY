CLASS lhc_Zi_Prdhdr_Ro DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Zi_Prdhdr_Ro RESULT result.

    METHODS maxLife FOR MODIFY
      IMPORTING keys FOR ACTION Zi_Prdhdr_Ro~maxLife RESULT result.

ENDCLASS.

CLASS lhc_Zi_Prdhdr_Ro IMPLEMENTATION.

  METHOD get_instance_features.

*  READ ENTITIES of ZI_PRDHDR_RO in LOCAL MODE
*  ENTITY PRDHDR
*  FIELDS ( Lifetime  )
*  WITH CORRESPONDING #(  keys )
*  RESULT DATA(lt_prod_hdr)
*  FAILED failed.

  ENDMETHOD.

  METHOD maxLife.

*    READ ENTITIES of ZI_PRDHDR_RO in LOCAL MODE
*  ENTITY PRDHDR
*  FIELDS ( Lifetime  )
*  WITH CORRESPONDING #(  keys )
*  RESULT DATA(lt_prod_hdr)
*  FAILED failed.
*
*  DELETE lt_prod_hdr where Lifetime < 6.




  ENDMETHOD.

ENDCLASS.
