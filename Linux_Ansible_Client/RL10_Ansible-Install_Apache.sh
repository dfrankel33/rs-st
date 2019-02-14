#! /bin/bash -e
# ---
# RightScript Name: RL10 Ansible - Install Apache
# Description: Check whether a RightLink upgrade is available and perform the upgrade.
# Inputs: {}
# Attachments:
# - apache.yml
# ...


attachments=${RS_ATTACH_DIR:-attachments}

sudo ansible-playbook ${attachments}/apache.yml
