# Pooja-cron-integration
Shell script + cron job integration for Ubuntu
./pooja.sh
crontab -e
defalut select nano 
* * * * * /root/pooja.sh >> /root/pooja.log 2>&1---run cron job every 1 min 
