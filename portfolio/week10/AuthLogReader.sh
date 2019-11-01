#!/bin/bash
#Student Id "10497312"

awk 'BEGIN{
    FS=" "
    }
    {

        printf "%s %s -%s/n",$1,$2,$3
        printf "%s\n",  $5
        for(i=6;i<NF;i++){
            printf "%s ", $i
    };
}' /var/log/auth.log
