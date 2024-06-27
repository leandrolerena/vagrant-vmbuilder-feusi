# Microsoft Repo for Code 
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -  
add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-get install -y  code


runuser feusi -c "code --install-extension ms-python.python"
runuser feusi -c "code --install-extension ms-toolsai.jupyter"
runuser feusi -c "code --install-extension ms-python.vscode-pylance"
runuser feusi -c "code --install-extension mtxr.sqltools"
runuser feusi -c "code --install-extension mtxr.sqltools-driver-mysql"
runuser feusi -c "code --install-extension humao.rest-client"

# Oracle.mysql-shell-for-vs-code