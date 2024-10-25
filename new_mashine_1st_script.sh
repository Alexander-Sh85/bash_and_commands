sudo apt update && sudo apt upgrade -y

# Установка пакетов
sudo apt install -y ansible \
                    apache2-utils \
                    apt-transport-https \
                    arping \
                    arp-scan \
                    atop \
                    base-passwd \
                    bash-completion \
                    ca-certificates \
                    certbot \
                    chromium \
                    curl \
                    diffutils \
                    filezilla \
                    findutils \
                    firefox \
                    flameshot \
                    gimp \
                    git \
                    htop \
                    iftop \
                    iotop \
                    jq \
                    kafkacat \
                    kate \
                    keepassxc \
                    krusader \
                    kubectx  \
                    lftp \
                    logtop \
                    lshw \
                    mc \
                    mysql-client \
                    ncdu \
                    net-tools \
                    nmap \
                    notepadqq \
                    parcellite \
                    postgresql-client \
                    postgresql-client-common \
                    snapd \
                    s3cmd \
                    siege \
                    strace \
                    tar \
                    tilix \
                    traceroute \
                    vim \
                    vlc \
                    wget \
                    wmctrl \
                    xpad \
                    xclip --fix-broken  2>> log.install
# Yandex Cli
curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash 2>> log.install

#DBeaver 
sudo snap install dbeaver-ce  2>> log.install

# REDIS
sudo snap install redisinsight  2>> log.install
sudo snap install another-redis-desktop-manager  2>> log.install

#TELEGRAM
sudo snap install telegram-desktop  2>> log.install

#Kubectx
sudo snap install kubectx --classic  2>> log.install

#Terraform
sudo snap install terraform --classic 2>> log.install

#DOCKER
# Add Docker's official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y  2>> log.install

#Google-hrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y

sudo apt-get install google-chrome-stable -y  2>> log.install

#HELM
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh  2>> log.install

#VScode
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo apt update
sudo apt install code   2>> log.install # or code-insiders

#KUBECTL
curl -LO https://dl.k8s.io/release/v1.31.0/bin/linux/amd64/kubectl
chmod +x ./kubectl 2>> log.install
sudo mv ./kubectl /usr/local/bin/kubectl

# google-drive-ocamlfuse
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt update
sudo apt install google-drive-ocamlfuse -y  2>> log.install

