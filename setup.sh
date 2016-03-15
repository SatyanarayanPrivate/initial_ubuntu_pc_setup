#!/bin/sh

#################################################################################################
# 											     	#
# Use this script after a fresh installation of Linux to set up the basic work envioremnent  	#
#												#
#################################################################################################

echo "============================= 0 :: Starting ============================="
sudo dpkg --add-architecture i386
sudo apt-get update --force-yes --yes

echo "============================= 1 :: gparted ============================="
sudo apt-get install gparted --force-yes --yes

echo "============================= 2 :: editors ============================="
sudo apt-get install vim exuberant-ctags meld xmlcopyeditor bless  --force-yes --yes

echo "============================= 3 :: dev tools ================================"
sudo apt-get -y  install ia32-libs-multiarch
sudo apt-get -y  install gettext
sudo apt-get -y  install libgtk2.0-dev
sudo apt-get -y  install rpm
sudo apt-get -y  install bison
sudo apt-get -y  install libfreetype6-dev
sudo apt-get -y  install libdbus-glib-1-dev
sudo apt-get -y  install liborbit2-dev
sudo apt-get -y  install intltool
sudo apt-get -y  install ccache
sudo apt-get -y  install ncurses-dev
sudo apt-get -y  install zlib1g
sudo apt-get -y  install zlib1g-dev
sudo apt-get -y  install gcc
sudo apt-get -y  install g++
sudo apt-get -y  install libtool
sudo apt-get -y  install uuid-dev
sudo apt-get -y  install liblzo2-dev
sudo apt-get -y  install tcl
sudo apt-get -y  install dpkg
sudo apt-get -y  install perl
sudo apt-get -y  install binutils
sudo apt-get -y  install libstdc++6
sudo apt-get -y  install libstdc++6-4.6-dev
sudo apt-get -y  install zlibc
sudo apt-get -y  install texinfo
sudo apt-get -y  install autoconf
sudo apt-get -y  install cmake
sudo apt-get -y  install libevent-2.0-5 libevent-core-2.0-5 libevent-openssl-2.0-5 libevent-pthreads-2.0-5 libevent-dev
sudo apt-get -y  install libiw-dev
sudo apt-get -y  install mosquitto mosquitto-clients python-mosquitto libmosquitto0-dev

echo "============================= 4 :: git ======================================" 
sudo apt-get install git-core gitg  --force-yes --yes

echo "============================= 5 :: svn ============================="
sudo apt-get install subversion --force-yes --yes

echo "============================= 6 :: time tracker ============================="
sudo apt-get install hamster-indicator --force-yes --yes

echo "============================= 7 :: comm ============================="
sudo apt-get install putty --force-yes --yes
sudo apt-get install minicom --force-yes --yes 

sudo apt-get install xinetd tftpd tftp --force-yes --yes
sudo echo "service tftp
{
protocol        = udp
port            = 69
socket_type     = dgram
wait            = yes
user            = nobody
server          = /usr/sbin/in.tftpd
server_args     = /tftpboot
disable         = no
}
" > /etc/xinetd.d/tftp
sudo mkdir /tftpboot
sudo chmod -R 777 /tftpboot
sudo chown -R nobody /tftpboot
sudo /etc/init.d/xinetd restart

sudo apt-get install openssh-server --force-yes --yes
sudo apt-get install openssh-client --force-yes --yes

sudo apt-get install iptux  --force-yes --yes

sudo dpkg --add-architecture i386
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get install skype  --force-yes --yes

echo "============================= 8 :: multimedia ============================="
sudo apt-get install vlc  --force-yes --yes

echo "============================= 9 :: misc ============================="
sudo apt-get install unetbootin  --force-yes --yes
sudo apt-get install filezilla --force-yes --yes
sudo apt-get install samba --force-yes --yes

echo "============================= 10 :: for ltib ============================="
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install ia32-libs-multiarch
sudo apt-get install gettext
sudo apt-get install libgtk2.0-dev
sudo apt-get install rpm
sudo apt-get install bison
sudo apt-get install libfreetype6-dev
sudo apt-get install libdbus-glib-1-dev
sudo apt-get install liborbit2-dev
sudo apt-get install intltool
sudo apt-get install ccache
sudo apt-get install ncurses-dev
sudo apt-get install zlib1g
sudo apt-get install zlib1g-dev
sudo apt-get install gcc
sudo apt-get install g++
sudo apt-get install libtool
sudo apt-get install uuid-dev
sudo apt-get install liblzo2-dev
sudo apt-get install tcl
sudo apt-get install dpkg
sudo apt-get install perl
sudo apt-get install binutils
sudo apt-get install libstdc++6
sudo apt-get install libstdc++6-4.6-dev
sudo apt-get install zlibc
sudo apt-get install texinfo
sudo apt-get install autoconf




