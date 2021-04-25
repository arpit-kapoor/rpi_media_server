## Mounting external storage device

### 1. Look for devices

```
sudo blkid
```

### 2. Mount the device

```
mkdir -p /media/share
chmod 777 /media/share
mount /dev/sda1 /media/share
```

### 2. Automount device
Add the following to `/etc/fstab`
```
sudo vim /etc/fstab
```

```
/dev/sda1   /media/share    ntfs    defaults    0   0
```