CLASS lhc_Zi_Prdhdr_Ro DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Zi_Prdhdr_Ro RESULT result.

    METHODS maxLife FOR MODIFY
      IMPORTING keys FOR ACTION Zi_Prdhdr_Ro~maxLife RESULT result.

ENDCLASS.

CLASS lhc_Zi_Prdhdr_Ro IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD maxLife.
  ENDMETHOD.

ENDCLASS.
