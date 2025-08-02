CLASS zcarenas_programa_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcarenas_programa_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  OUT->write( 'hola nundillo en abap cloud' ).
  ENDMETHOD.
ENDCLASS.
