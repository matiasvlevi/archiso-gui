#!/usr/bin/env bash

script_cmdline ()
{
    local param
    for param in $(< /proc/cmdline); do
        case "${param}" in
            script=*) echo "${param#*=}" ; return 0 ;;
        esac
    done
}

automated_script ()
{
    local script rt
    script="$(script_cmdline)"
    if [[ -n "${script}" && ! -x /tmp/startup_script ]]; then
        if [[ "${script}" =~ ^((http|https|ftp)://) ]]; then
            curl "${script}" --location --retry-connrefused --retry 10 -s -o /tmp/startup_script >/dev/null
            rt=$?
        else
            cp "${script}" /tmp/startup_script
            rt=$?
        fi
        if [[ ${rt} -eq 0 ]]; then
            chmod +x /tmp/startup_script
            /tmp/startup_script
        fi
    fi
}

sudo systemctl start NetworkManager.service

THIRD_PART=$(blkid | grep "STORAGE" | grep -oP '(?<=PARTUUID\=\").*(?=\")')
if [[ $(blkid | grep "STORAGE") ]]; then
 mkdir /run/archiso/storage
 mount PARTUUID=$THIRD_PART /run/archiso/storage;
else
 echo "No storage partition found";
fi

mount -o remount,size=4G /run/archiso/cowspace

chmod +x /root/.scripts/.welcome_script.sh
chmod +x /root/.scripts/shutdown-menu.sh
chmod +x /root/.scripts/display-swap.sh

if [[ $(tty) == "/dev/tty1" ]]; then
    automated_script

    startx
fi


