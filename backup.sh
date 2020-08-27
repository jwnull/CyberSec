#!/bin/bash
mv /var/backup/home.tar /var/backup/home.last.tar
tar cvvrWf /var/backup/home.tar /home
ls -lh /var/backup
free -h > /var/backup/disk_report.txt

