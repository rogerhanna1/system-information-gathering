#!/bin/bash
mkdir system_info
touch system_info/info.txt
pwd >> system_info/info.txt
ls -l /etc > system_info/etc_files.txt
cp /etc/os-release system_info/
mv system_info/os-release system_info/os_details.txt
cat system_info/os_details.txt >> system_info/info.txt
uname -a >> system_info/info.txt
df -h >> system_info/info.txt
chmod 600 system_info/info.txt

