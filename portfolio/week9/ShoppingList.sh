#!/bin/bash
awk 'BEGIN{
    FS =",";
    currency="$"
    print "Item      |Quantity   |Price"
    printf "............|...............|..........\n"
}
{

    printf "%-14s|%-10s|%c%05.2f|%c%05.2f|\n",$1,$2,currency,$3,currency,$2*$3
}
END{}' shopping.csv