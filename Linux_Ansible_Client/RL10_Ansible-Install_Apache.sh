#! /bin/bash -e
# ---
# RightScript Name: RL10 Ansible - Install Apache
# Description: Check whether a RightLink upgrade is available and perform the upgrade.
# Inputs:
#   PLAYBOOK_URL:
#     Category: Ansible
#     Description: URL of an Ansible Playbook YML file
#     Input Type: single
#     Required: true
#     Advanced: false
#     Default: text:https://raw.githubusercontent.com/dfrankel33/rs-st/master/Linux_Ansible_Client/attachments/hello_world.yml
# Attachments: []
# ...


curl $PLAYBOOK_URL --output playbook.yml

sudo ansible-playbook playbook.yml
