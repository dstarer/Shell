apt-get install python-software-properties -y
apt-get install software-properties-common -y
apt-get update
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update

sudo apt-get install oracle-java8-installer
sudo update-java-alternatives -s java-8-oracle
java -version
javac -version
