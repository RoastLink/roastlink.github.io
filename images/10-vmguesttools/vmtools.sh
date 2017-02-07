#!/bin/sh

VIRT=$(virt-what)


case $VIRT in
    vmware)
	ros service enable open-vm-tools
        ros service up open-vm-tools
        ;;
    *)
        echo "detected virt: ($VIRT) - no guest services loaded"
        ;;
esac

echo "Disabling vm-guest-tools service"
ros service disable vm-guest-tools

