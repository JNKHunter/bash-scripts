#!/bin/bash

#Loop through the outer range in the brackets
for i in {2007..2017};

do

  #Loop through the inner range of brackets
  for j in {01..12};
  
  do
    #Do something with the range, E.G. iterate through a range of files and unzip
    #bzip2 -dk RS_$i-$j.bz2
    
    if [ $? -eq 0 ]; then
      #If file exists and there is not error, do something with the files, E.G. copy to s3 and clean up
      #aws s3 cp RS_$i-$j s3://my-s3-bucket/dir1/dir2/RS_$i-$j
      #rm RS_$i-$j
      echo $i-$j
    fi
  done
done
