#!/bin/bash
rm *.raml
cd template
for f in *.template 
do
  echo "Processing $f..."
  root=$( echo "$f" | cut -f 1 -d\. )
  sed -f raml.sed $root.template > ../$root.raml 
done
