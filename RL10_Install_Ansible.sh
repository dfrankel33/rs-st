#! /bin/bash -e
# ---
# RightScript Name: RL10 Install Ansible
# Description: Check whether a RightLink upgrade is available and perform the upgrade.
# Inputs: {}
# Attachments: []
# ...
#

function isinstalled {
  if yum list installed "$@" >/dev/null 2>&1; then
    true
  else
    false
  fi
}

if isinstalled "ansible"; then 
  echo "Ansible already installed. Skipping.."
  exit 0
else 
  echo "Ansible not installed."
  echo "Installing Ansible.."
  sudo yum install ansible -y
  echo "Testing Ansible.."
  ansible localhost -m ping
fi

