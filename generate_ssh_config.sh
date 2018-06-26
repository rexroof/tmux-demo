#!/bin/bash


words=("one" "two" "three" "four" "five" "six")

x=0
for host in $( aws --profile rexroof --region us-east-2 ec2 describe-instances | jq -r '.Reservations[].Instances[].PublicIpAddress' )
do
  if [ $host == "null" ] ; then
    continue
  fi
  echo "
Host ${words[$x]}
  Hostname ${host}
  User ec2-user
  IdentityFile ~/.ssh/rex-roof-us-east-2.pem
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null "
  x=$(( $x + 1 ))
done
