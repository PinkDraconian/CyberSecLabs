---
title: Unroot
created: '2020-07-06T14:09:06.699Z'
modified: '2020-07-06T14:27:35.377Z'
---

# Unroot
- IP: `172.31.1.17`
- OS: `Linux`
## Enumeration
### Writeup

### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.17`
```

```
</details>

<details>
<summary>Gobuster</summary>

- `gobuster dir --wordlist /usr/share/wordlists/dirb/big.txt --url http://172.31.1.17/ -x txt,php -o commands/gobuster-80-root`
```

```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
