gpg --keyserver hkp://keys.gnupg.net --recv-key 7D8D0BF6
gpg --fingerprint 7D8D0BF6
gpg -a --export 7D8D0BF6 | apt-key add -
wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add
apt update
