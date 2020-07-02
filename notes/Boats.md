---
tags: [Beginner, Video, Windows]
title: Boats
created: '2020-07-01T18:53:55.402Z'
modified: '2020-07-02T07:29:40.032Z'
---

# Boats
- IP: `172.31.1.14`
- OS: `Windows`
## Enumeration
### Writeup

### Commands
- `nmap -p 1-65535 -T4 -A -v 172.31.1.14`
- `gobuster dir --wordlist /usr/share/wordlists/dirb/big.txt --url 172.31.1.14 -x php`


