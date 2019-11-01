#!/bin/bash
#Student Id "10497312"

htmlContent=$(curl -s http://example.com)
title=$(echo "$htmlContent" | sed -rn 's/<h1>(.*)<\/h1>/\1/ p')

body=$(echo "$htmlContent" | sed -rn "/<p>[^<](.|\n)*?<\/p>/ p")

echo -e $title "\n" $body