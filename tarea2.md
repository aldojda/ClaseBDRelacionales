# Tarea 2: Modelo Entidad Relación: 

```mermaid

graph TD

    re_3{Tiene} -->|N| p1[pedido]
    catsku[Producto] -->|N|re_3{Tiene}

    catsku[Producto] --> cat1(id_producto)
        cat1-->w1(int)
    catsku[Producto] --> cat2(line_extension)
        cat2-->w2(varchart25)
    catsku[Producto] --> cat3(marca)
        cat3-->w3(varchart25)
    catsku[Producto] --> cat4(tipoliquido)
        cat4-->w4(varchart25)
    catsku[Producto] --> cat8(diamante_precios)
        cat8-->w8(varchart25)
    catsku[Producto] --> cat5(packtype)
        cat5-->w5(varchart25)
    catsku[Producto] --> cat6(vol_ml)
        cat6-->w6(float)
    catsku[Producto] --> cat7(bottle_type)
        cat7-->w7(varchart25)


    C1[Cliente] --> c1_id(id_cliente)
        c1_id-->Z(int)
    C1[Cliente] --> c2(dr)
        c2-->z1(varchart_25)
    C1[Cliente] --> c3(gz)
        c3-->z2(varchart_25)
    C1[Cliente] --> c4(condición)
        c4-->z3(varchart_25)
    C1[Cliente] --> c5(cp)
        c5-->z4(int)
    C1[Cliente] --> c6(gec)
        c6-->z5(varchart_25)
    C1[Cliente] --> c7(fechaAlta)
        c7-->z6(datetime32)
    C1[Cliente] --> c8(Situacion)
        c8-->z7(varchart_25)
    
    re_1{Tiene} -->|1| C1[Cliente]
    p1[Pedido] -->|N|re_1{Tiene}

    p1[pedido] --> p2(id_pedido)
        p2-->x1(int)
    p1[pedido] --> p3(id_producto)
        p3-->x2(int)
    p1[pedido] --> p4(date)
        p4-->x3(datetime32)
    p1[pedido] --> p5(volumen)
        p5-->x4(float)
    p1[pedido] --> p7(revenue)
        p7-->x5(float)
    p1[pedido] --> p8(bonif)
        p8-->x6(float)
    p1[pedido] --> p9(ayudas)
        p9-->x7(float)
    p1[pedido] --> p10(income)
        p10-->x8(float)
    p1[pedido] --> p11(promotions)
        p11-->x9(float)
    p1[pedido] --> p6(cajas)
        p6-->x10(float)

    re_2{Tiene} -->|1| C1[Cliente]
    cap[CapacidadFria] -->|N|re_2{Tiene}

    cap[capacidadFria] --> cap1(id_equipo)
        cap1-->y1(int)
    cap[capacidadFria] --> cap2(cap_fri)
        cap2-->y2(int)
    cap[capacidadFria] --> cap3(status)
        cap3-->y3(varchart_25)
    cap[capacidadFria] --> cap4(fechaEntrega)
        cap3-->y4(datetime32)
        
```
