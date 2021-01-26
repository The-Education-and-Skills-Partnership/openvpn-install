!#/bin/bash

while getopts c: flag
do
    case "${flag}" in
        c) client=${OPTARG};;
    esac
done

if test -z $client
then
    echo "Please provide a client name using the -c argument"
    exit 1
else
    export MENU_OPTION="1"
    export CLIENT=$client
    export PASS="1"
    ./openvpn-install.sh
fi