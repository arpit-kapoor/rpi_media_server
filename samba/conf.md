## 1. Configure Samba server

Add the following to the end of `/etc/samba/smb.conf`
```
[SharePi]
comment = RaspberryPi
public = no
writeable = yes
browsable = yes
path = /media/share
create mask = 0777
directory mask = 0777
```

## 2. Making it secure - add user login
```
sudo smbpasswd -a pi
```
*Note:* The user pi should be present on the device hosting the server

## 3. Restart the samba service
```
sudo service smbd restart
```

Test access via file explorer on `smb://X.X.X.X/SharePi`