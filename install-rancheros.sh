#!/bin/bash

echo "seleziona il profilo di rete tra i seguenti:"
echo "1) wired - un punto rete LAN"
echo "2) wireless - un punto rete WLAN"
echo "3) bridged - 2 punti rete in bridge (1 LAN + 1 WLAN): punto wifi collegato ad AP"
read profile

case "$profile" in
	1)
		echo "$profile"
		cp cloud-config.template_wired cloud-config.template
		
		ip link | awk '{print $2}'
		echo

		echo "digita il MAC address della scheda da configurare dall'elenco precedente"
		read iface_wired
		echo
		echo $iface_wired
		echo
	;;
	2)
		cp cloud-config.template_wireless cloud-config.template
		
		ip link | awk '{print $2}'
		echo

		echo "digita il MAC address della scheda da configurare dall'elenco precedente"
		read iface_wireless
		echo
		echo $iface_wireless
		echo
	;;
	3)
		cp cloud-config.template_bridged cloud-config.template
		ip link | awk '{print $2}'
		echo

		echo "digita il MAC address della scheda LAN da configurare dall'elenco precedente"
		read iface_wired
		echo
		echo $iface_wired
		echo
		echo "digita il MAC address della scheda WLAN da configurare dall'elenco precedente"
		read iface_wireless
		echo
		echo $iface_wireless
		echo
	;;
	*)
		echo "ATTENZIONE: nessuna scelta effettuata"
		exit
	;;
esac

src_cloud=cloud-config.template
dst_cloud=cloud-config.yml

sudo fdisk -l
echo

echo "digita il disco (NON LA PARTIZIONE) su cui andrà installato il sistema operativo"
read dev
echo
echo $dev
echo

echo "digita la partizione dati da montare"
read part
echo
echo $part
echo

cp $src_cloud $dst_cloud

sed -i "s/___MACADDRESS-WIRED___/${iface_wired}/" $dst_cloud
sed -i "s/___MACADDRESS-WIRELESS___/${iface_wireless}/" $dst_cloud
sed -i "s+___PART___+${part}+" $dst_cloud

sudo ros config validate < cloud-config.yml

if [ $? -eq 0 ]
then
  echo "File $dst_cloud valido. Procedo all'installazione"
  sudo ros install -f -c $dst_cloud --append "rancher.password=rancher" -d $dev
else
  echo "File $dst_cloud non valido"
fi
