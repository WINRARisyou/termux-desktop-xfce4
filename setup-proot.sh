pkg update -y
pkg upgrade -y
pkg install x11-repo
pkg install termux-x11-nightly
pkg install tur-repo
pkg install pulseaudio
pkg install proot-distro
pkg install wget
pkg install git
pkg install xorg-xhost
xhost +localhost

pkg install proot-distro
proot-distro install debian
echo "
Run The following commands:
proot-distro login debian
apt update -y
apt install sudo nano adduser -y
adduser yourusername
nano/etc/sudoers
yourusername ALL=(ALL:ALL) ALL
logout
proot-distro login debian --user yourusername
echo 'export DISPLAY=:0' >> ~/.bashrc
echo 'export PULSE_SERVER=127.0.0.1' >> ~/.bashrc
echo 'export XDG_RUNTIME_DIR=${TMPDIR}' >> ~/.bashrc
source ~/.bashrc
logout

From there, you can use start_proot.sh to login."
