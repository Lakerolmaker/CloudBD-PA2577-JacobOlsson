#!/usr/bin/env bash

source hadoop-common.sh

mkdir QualitasCorpus
cd QualitasCorpus
wget ftp://custsrv1.bth.se/FTP/QualitasCorpus/QualitasCorpus-20130901r-pt1.tar
wget ftp://custsrv1.bth.se/FTP/QualitasCorpus/QualitasCorpus-20130901r-pt2.tar
tar xf QualitasCorpus-20130901r-pt1.tar
tar xf QualitasCorpus-20130901r-pt2.tar
yes | QualitasCorpus-20130901r/bin/install.pl
rm QualitasCorpus-20130901r-pt1.tar
rm QualitasCorpus-20130901r-pt2.tar
