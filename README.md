
DynDNS alternative using AWS Route 53 and a home computer

# Instructions

```sh
/bin/bash install.sh

source venv/bin/activate

aws configure
```

Policy

1. IAM > Policies
2. Create Policy
3. Create Your Own Policy
4. Fill in Policy Name
5. Insert your zone id into policy-update-route53.json and paste its content into Policy Document

Test it

Run the script passing in your configure in env vars.
If/when you get AWS errors, look them up...
```sh
ZONEID="Z3P8T7FOOBAR8X" RECORDSET="foo.bar.com" /bin/bash /home/pi/src/ddns/ddns.sh
```

Automate it

```sh
crontab -e

#insert something like into crontab
0 2,7,10,18, * * * source /home/pi/src/ddns/venv/bin/activate && ZONEID="Z3P8T7FOOBAR8X" RECORDSET="foo.bar.com" /bin/bash /home/pi/src/ddns/ddns.sh
```

