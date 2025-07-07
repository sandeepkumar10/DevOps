#!/bin/bash

recipient="sandeepkumar1091998@gmail.com"

outputfile=$(mktemp)

echo "AWS - EC2 - INTANCES" >> "$outputfile"
echo "********************" >> "$outputfile"
echo "" >> "$outputfile"


aws ec2 describe-instances --query "Reservations[].Instances[].{InstanceID: InstanceId, ServerName: Tags[?Key=='Name']|[0].Value, IPAdress: PublicIpAddress, Status: State.Name}" --output table >> "$outputfile"

mail -s "AWS EC2 Instance Report - $(date +"%d-%m-%Y")" "$recipient" < "$outputfile"

rm "$outputfile"

