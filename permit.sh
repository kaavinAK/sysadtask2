#!/bin/bash

app="appdev"
web="webdev"
sys="sysad"
groupadd firstyear
groupadd secondyear
groupadd thirdyear
groupadd fouryear
groupadd group1a
groupadd group1w
groupadd group1s
groupadd group2a
groupadd group2w
groupadd group2s
groupadd group3a
groupadd group3w
groupadd group3s
for((i=0;i<30;i++))
do
if((i==0))
then
usermod -aG firstyear ${app}${i}
usermod -aG firstyear ${web}${i}
usermod -aG firstyear ${sys}${i}
elif((i==1))
then 
usermod -aG secondyear ${app}${i}
usermod -aG group1a ${app}${i}

usermod -aG secondyear ${web}${i}
usermod -aG group1w  ${web}${i}
usermod -aG secondyear ${sys}${i}
usermod -aG group1s  ${sys}${i}
elif((i==2))
then 
usermod -aG thirdyear ${app}${i}
usermod -aG thirdyear ${web}${i}
usermod -aG thirdyear ${sys}${i}
usermod -aG group1a ${app}${i}
usermod -aG group1w ${web}${i}
usermod -aG group1s ${sys}${i}
usermod -aG group2s  ${sys}${i}
usermod -aG group2a  ${app}${i}
usermod -aG group2w  ${web}${i}
elif((i==3))
then 
usermod -aG group1s ${sys}${i}
usermod -aG group1w ${web}${i}
usermod -aG group1a ${app}${i}
usermod -aG fouryear ${app}${i}
usermod -aG fouryear ${web}${i}
usermod -aG fouryear ${sys}${i}
usermod -aG group2s ${sys}${i}
usermod -aG group2a ${app}${i}
usermod -aG group2w ${web}${i}
usermod -aG group3w ${web}${i}
usermod -aG group3s ${sys}${i}
usermod -aG group3a ${app}${i}
fi
 

done


app="appdev"
web="webdev"
sys="sysad"

for((i=0;i<30;i++))
do
if((i==0))
then
chown ${app}${i}:group1a ${app}${i}
chmod 750 ${app}${i}
chown ${web}${i}:group1w ${web}${i}
chmod 750 ${web}${i}
chown ${sys}${i}:group1s ${sys}${i}
chmod 750 ${sys}${i}
elif((i==1))
then 
chown ${app}${i}:group2a ${app}${i}
chmod 750 ${app}${i}
chown ${sys}${i}:group2s ${sys}${i}
chmod 750 ${sys}${i}
chown ${web}${i}:group2w ${web}${i}
chmod 750 ${web}${i}
elif((i==2))
then 
chown ${app}${i}:group3a ${app}${i}
chmod 750 ${app}${i}
chown ${web}${i}:group3w ${web}${i}
chmod 750 ${web}${i}
chown ${sys}${i}:group3s ${sys}${i}
chmod 750 ${sys}${i}
elif((i==3))
then 
chown root:${app}${i} ${app}${i}
chmod 770 ${app}${i}
chown root:${web}${i} ${web}${i}
chmod 770 ${web}${i}
chown root:${sys}${i} ${sys}${i}
chmod 770 ${sys}${i}
fi
 

done

