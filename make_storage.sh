if [[ $1 ]]; then

fdisk $1 <<EEOF
n
p
3


w
EEOF
mkfs.ext4 $1 <<EEOF
y
EEOF
e2label $1 "STORAGE" 

else

echo "No device was specified"

fi