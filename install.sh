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
apt-get install -y dotnet-sdk-2.2
apt-get install -y dotnet-sdk-3.0
apt-get install -y dotnet-sdk-3.1
apt-get install -y dotnet-sdk-5.0
apt-get clean
