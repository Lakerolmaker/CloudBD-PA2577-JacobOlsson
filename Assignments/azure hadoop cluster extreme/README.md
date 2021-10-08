# Installation of a distributed Hadoop on azure with the vagrant plugin

## Setup
IMPORTANT you have to update each hostname of the master and workers.

### in these files
```
workers
masters
yarn-site.xml
core-site.xml
Vagrantfile
```


## Usage

Step 1: Start workers ( And wait for  each to finish deployment )
```
start_workers.bat
```

Step 2: Start master
```
start_master.bat
```
