# report-ip

Regularly report current internal and external ip addresses.

Crontab example:

```
0 */1 * * * cd /path/to/report-ip; ./report-ip.sh &>/dev/null
```
