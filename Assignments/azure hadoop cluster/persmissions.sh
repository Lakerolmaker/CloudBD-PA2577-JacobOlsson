#!/bin/bash

cat "/vagrant/hadoop-common.sh" >> ~/.bashrc
. ~/.bashrc
exec bash
sudo chmod 777 -R /tmp/*
