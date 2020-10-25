# Install Docker (so that we can Docker while we Docker)
apt-get update
curl -sSL https://get.docker.com/ | sh

# Install .NET Core dependencies
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget -q https://packages.microsoft.com/config/debian/9/prod.list
mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
chown root:root /etc/apt/sources.list.d/microsoft-prod.list

# Install .NET Core
apt-get update
apt-get install -y dotnet-sdk-2.0.0
apt-get install -y dotnet-sdk-2.0.2
apt-get install -y dotnet-sdk-2.0.3
apt-get install -y dotnet-sdk-2.1
apt-get install -y dotnet-sdk-2.1.101
apt-get install -y dotnet-sdk-2.1.103
apt-get install -y dotnet-sdk-2.1.104
apt-get install -y dotnet-sdk-2.1.105
apt-get install -y dotnet-sdk-2.1.2
apt-get install -y dotnet-sdk-2.1.200
apt-get install -y dotnet-sdk-2.1.201
apt-get install -y dotnet-sdk-2.1.202
apt-get install -y dotnet-sdk-2.1.3
apt-get install -y dotnet-sdk-2.2
apt-get install -y dotnet-sdk-3.0
apt-get install -y dotnet-sdk-3.1
apt-get clean
