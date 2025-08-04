CLASS zcarenas_modifica_arte_002 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcarenas_modifica_arte_002 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


        UPDATE zcarenas_tab_art set descripcion2 = 'ejemplo1'
        where id_art = 1.

        UPDATE zcarenas_tab_art set descripcion2 = 'detalle producto 2'
        where id_art = 2.

        IF sy-subrc = 0.
           out->write( 'modificacion exitosa' ).
           COMMIT WORK.
        ELSE.
           out->write( 'No se logo hacer la modificacion' ).
           ROLLBACK WORK.
        ENDIF.

  ENDMETHOD.
ENDCLASS.
