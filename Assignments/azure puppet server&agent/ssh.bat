cd agent
start cmd.exe /k "vagrant ssh appserver12323"
start cmd.exe /k "vagrant ssh webnode12323"
cd ..
cd server
start cmd.exe /k "vagrant ssh puppet"
