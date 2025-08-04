CLASS zcarenas_class_arte_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcarenas_class_arte_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: it_art TYPE STANDARD TABLE OF zcarenas_tab_art.
    it_art = VALUE #(
    ( client = sy-mandt
    id_art = 1
    descripcion = 'Nimi colores'
    descripcion2 = 'un mini estuche,muchos coloress'
    color = 'varios'
    piezas = 12
    stock = 10
    url = 'https://youtu.be/v6x-Abw8lms?list=PLf02an--j1Bea18eawlcqrmcsTgOrvA4p'
    )
    ( client = sy-mandt
    id_art = 2
    descripcion = 'estuches'
    descripcion2 = 'estuches de cuetro y madera y multiples colores'
    color = 'negro'
    piezas = 1
    stock = 100
    url = 'https://youtu.be/v6x-Abw8lms?list=PLf02an--j1Bea18eawlcqrmcsTgOrvA4p'
    )
    ( client = sy-mandt
    id_art = 3
    descripcion = 'plumones'
    descripcion2 = 'plumones de 12 30 unidades'
    color = 'varios'
    piezas = 5
    stock = 10
    url = 'https://youtu.be/v6x-Abw8lms?list=PLf02an--j1Bea18eawlcqrmcsTgOrvA4p'
    )
     ( client = sy-mandt
    id_art = 4
    descripcion = 'Lapiz'
    descripcion2 = 'Lapices de grafito'
    color = 'negro'
    piezas = 1
    stock = 40
    url = 'https://youtu.be/v6x-Abw8lms?list=PLf02an--j1Bea18eawlcqrmcsTgOrvA4p'
    )
    ).
    INSERT zcarenas_tab_art FROM TABLE @it_art.
    IF sy-subrc = 0.
      out->write( 'se insertaron correctamente los registros' ).
    ELSE.
      out->write( 'Error  no se logro insertar los registro en la tabla' ).
   endif.

    ENDMETHOD.
ENDCLASS.
