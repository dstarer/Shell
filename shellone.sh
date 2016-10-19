sudo apt-get update 
sudo apt-get install apt-transport-https ca-certificates -y
sudo apt-get install git -y
apt-get install curl -y

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo bash -c "echo  deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list"

sudo apt-get update
sudo apt-get purge lxc-docker

sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y

sudo apt-get update
sudo apt-get install docker-engine -y
sudo service docker start
nohup sudo docker daemon --api-cors-header="*" -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock&
sudo docker run hello-world

curl -L https://github.com/docker/compose/releases/download/1.8.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

docker pull yeasy/hyperledger-fabric:latest
docker tag yeasy/hyperledger-fabric:latest hyperledger/fabric-peer:latest
docker tag yeasy/hyperledger-fabric:latest hyperledger/fabric-baseimage:latest
docker tag yeasy/hyperledger-fabric:latest hyperledger/fabric-membersrvc:latest

curl -O https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.7.1.linux-amd64.tar.gz
sudo mkdir -p ~/go; echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.bashrc
