#!/bin/bash
echo "Enter the file path or the directory in which file is present"
read filepath
cd $filepath
echo "Enter the filename with extension:"
read filename
if [ -f "$filename" ]; then
cd | find . -name $filename
fileext=${filename##*.}
if [ $fileext=='txt' ];
then
lowriter --convert-to pdf $filename
fi
if [ $fileext=='pdf' ];
then
lowriter --convert-to txt $filename
fi
if [ $fileext=='jpg' ];
then
lowriter --convert-to pdf $filename
fi
if [ $fileext=='docx' ];
then
lowriter --convert-to pdf $filename
fi
if [ $fileext=='doc' ];
then
lowriter --convert-to pdf $filename
fi
else
  echo "$filename does not exist at this location"
fi


