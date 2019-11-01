#!/bin/bash
#Student Id "10497312"

awk 'BEGIN{
    FS =",";
    currency="$";
    total_quantity="0";
    total_price="0";
    total="0";
    print "Item          |Quantity  |Price  |Total";
    printf "..............|..........|.............\n"
    }
    {
        printf "%-14s|%-10s|%c%05.2f|%c%05.2f|\n",$1,$2,currency,$3,currency,$2*$3;
        total_quantity=total_quantity+$2;
        total_price=total_price+$3
    }
    END{
        printf "%-14s|%-10s|%c%0.5.2f|%c%05.2f|\n","Total",total_quantity,currency,total_price,currency,total_price*total_quantity;
    }' shopping.csv
