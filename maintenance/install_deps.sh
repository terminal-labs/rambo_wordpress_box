apt update -y --quiet
apt upgrade -y --quiet

apt install -y -f

apt install -y --quiet ca-certificates

DEBIAN_FRONTEND=noninteractive apt -y -q -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" full-upgrade

apt install -y build-essential
apt install -y linux-headers-$(uname -r)

apt install -y wget
apt install -y nano
apt install -y emacs
