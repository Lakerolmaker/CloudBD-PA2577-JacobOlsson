cd agent
start cmd.exe /k "vagrant ssh appserver"
cd ..
cd server
start cmd.exe /k "vagrant ssh puppet"
