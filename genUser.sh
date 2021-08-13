#! /bin/bash

app='appdev'
web='webdev'
sys='sysad'
for((i=0;i<30;i++))
do
echo  ${app}${i} added
echo ${web}${i} added
echo ${sys}${i} added
useradd ${app}${i} -m -s /bin/bash -p U6aMy0wojraho
useradd ${web}${i} -m -s /bin/bash -p U6aMy0wojraho
useradd ${sys}${i} -m -s /bin/bash -p U6aMy0wojraho
done
