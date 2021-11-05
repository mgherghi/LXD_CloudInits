config:
  nvidia.runtime: "true"
  user.user-data: |
    #cloud-config
    package_update: true
    package_upgrade: true
    runcmd:
     - rm /etc/ssh/sshd_config
     - [ wget, "https://raw.githubusercontent.com/mgherghi/LXD_CloudInits/main/sshd_config", -O, /etc/ssh/sshd_config ]
    packages:
     - git
     - build-essential
    users:
     - name: cyber
       lock_passwd: false
       plain_text_passwd: 'cyber'
       sudo:  ALL=(ALL) ALL
       home: /home/cyber
       shell: /bin/bash
    final_message: "The system is finally up, after $UPTIME seconds"
description: ""
devices: {}
name: cloud
used_by: []
