# Microsoft Repo for Code 
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -  
add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-get install -y  code


su feusi -c "code --install-extension ms-python.python"
su feusi -c "code --install-extension ms-toolsai.jupyter"
su feusi -c "code --install-extension ms-python.vscode-pylance"
su feusi -c "code --install-extension mtxr.sqltools"
su feusi -c "code --install-extension mtxr.sqltools-driver-mysql"
su feusi -c "code --install-extension humao.rest-client"
su feusi -c "code --install-extension ms-azuretools.vscode-docker"
