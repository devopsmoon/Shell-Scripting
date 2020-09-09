#!/bin/bash
echo -n "Enter the file name = "
read name
if [ -e $name ]
then
echo "The given file $name is regular file"
else
echo "The given file $name is not regular file"
fi