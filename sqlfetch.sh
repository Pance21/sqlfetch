#!/bin/bash

# To start MySQL server: sudo service mysqld start
# To stop MySQL server: sudo service mysqld stop
# To restart MySQL server: sudo service mysqld restart
# You can also install: mysql-workbench

RED='\033[0;31m'
NC='\033[0m' # No Color
BGYellow='\033[43m'
BGBlack='\033[40m'

echo -e "${RED}${BGYellow}mysql version?: ${BGBlack}${NC}" $(mysql -V) "\n"
echo -e "${RED}${BGYellow}Is mysql running?: ${BGBlack}${NC}" $(ps -aux | grep mysql) "\n"

echo -e "${RED}${BGYellow}mysqladmin version?: ${BGBlack}${NC}" $(mysqladmin -V) "\n"
echo -e "${RED}${BGYellow}mysqladmin process?: ${BGBlack}${NC}\n"
sudo mysqladmin processlist

sudo service mysql status

echo -e "${RED}${BGYellow}exit or quit to get out. Remember to end sql commands with ;${BGBlack}${NC}\n"

# next line will log you in to mysql, if you uncomment it.
#sudo mysql
