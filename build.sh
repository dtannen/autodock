#!/bin/bash
export GOPATH=`pwd`
export AUTODOCK_YAY=XXXX/XXXX_dev:"/bin/sh eb_update.sh"
echo "[-] Go Build"
go build -o webhook_listener
