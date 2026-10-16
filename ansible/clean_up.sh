# /bin/bash

virsh destroy kcontrol
virsh destroy kworker1
virsh destroy kworker2

virsh undefine kcontrol --nvram
virsh undefine kworker2 --nvram
virsh undefine kworker1 --nvram

rm /var/lib/libvirt/images/kcontrol*
rm /var/lib/libvirt/images/kworker*
rm -rf /var/lib/libvirt/images/cloudinit
