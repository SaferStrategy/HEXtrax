#!/bin/bash

# Variables
VM_NAME="DevServer"
ISO_PATH="/path/to/your/ubuntu-server.iso"
VM_DIR="/path/to/your/virtual_machines"

# Create VM
VBoxManage createvm --name $VM_NAME --ostype Ubuntu_64 --register --basefolder $VM_DIR

# Set up VM hardware
VBoxManage modifyvm $VM_NAME --ioapic on
VBoxManage modifyvm $VM_NAME --memory 2048 --vram 128
VBoxManage modifyvm $VM_NAME --nic1 nat
VBoxManage modifyvm $VM_NAME --natpf1 "guestssh,tcp,,2222,,22"

# Create virtual disk
VBoxManage createhd --filename $VM_DIR/$VM_NAME/$VM_NAME.vdi --size 20000

# Set up storage
VBoxManage storagectl $VM_NAME --name "SATA Controller" --add sata --controller IntelAhci
VBoxManage storageattach $VM_NAME --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $VM_DIR/$VM_NAME/$VM_NAME.vdi

# Attach ISO
VBoxManage storagectl $VM_NAME --name "IDE Controller" --add ide
VBoxManage storageattach $VM_NAME --storagectl "IDE Controller" --port 0 --device 0 --type dvddrive --medium $ISO_PATH

# Start VM
VBoxManage startvm $VM_NAME
