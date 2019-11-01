
#!/bin/bash
#Student Id "10497312"

RED=$'\033[31m'
WHITE=$'\033[0m'
path="/home/student/CSI6203/portfolio/week6"

printError()
{
    echo -e "$RED ERROR: $WHITE $1" 
}
    
    $path/Triangle.sh > /home/student/CSI6203/portfolio/week9/outputTriangles.txt

    echo $triangle_info | awk 'BEGIN {
        FS=":"
        totalArea = 0
    }
    { 
        gsub(/[a-zA-z]\s*?/,"",$2); gsub(/[a-zA-z]\s*?/,"",$3); gsub(/[a-zA-z]\s*?/,"",$4)
        printf ("%5s %5s %5s %5s %5s %5s\n", "Base:", $2 ,"Height:", $3 ,"Area:", $4)
        totalArea =  totalArea + $3
    }
    END{
        printf ("%5s %5s\n", "Total Area: ", totalArea)
    }' /home/student/CSI6203/portfolio/week9/outputTriangles.txt

