####										 ####
#  VERY IMPORTANT TO REMOVE ALL COMMENTS EXCEPT #cloud-conf OTHERWISE IT WONT WORK  *
####										 ####

config:
  user.user-data: |
    #cloud-config
    package_update: true
    package_upgrade: true
    package_reboot_if_required: true
# Runs only at 1st boot
    bootcmd:
      - sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
      - systemctl reload ssh
# Packages to install
    packages:
      - git
      - build-essential
# Create the users
    users:
      - name: cyber
        lock_passwd: false
        sudo: ALL=(ALL) NOPASSWD:ALL
        shell: /bin/bash
        passwd: $6$rounds=4096$gCwhRoy.POmr6ern$9/Jeu0R/mCIGtz0pkIXMr5I7QlaWTvLBNKKLzfCoAlN/98yfr29/RYpOKFQALDGSC5jXY1n/10/8dWGbhXb0C0
description: ""
devices: {}
name: cloud
used_by: []
