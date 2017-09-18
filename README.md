# randomVPN
Sets up server on a randomly selected VPN from a folder of VPN config files

Features
1. Randomly select VPN config file and establish a tunnel
2. Config file that allows for start at boot and other options to be enabled
  *Start on boot
  *system reboot
  *reboot intervals
  *config Dir
3. Install file for ease of use through apt-get

Agenda
1.Set up core
2.create random file pulling function
3.set up checks for already running Tunnel
4.create logs and proper logging features
5.create installer
