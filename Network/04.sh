netstat -rn | grep 'default' | awk '{print $2}' | head -1 
