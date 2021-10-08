for x in $(yarn application -list -appStates ACCEPTED | awk 'NR > 2 { print $1 }'); do yarn application -kill $x; done
