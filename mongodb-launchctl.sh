#!/usr/bin/env bash

# Mongodb configuration file:
# /usr/local/Cellar/mongodb/1.6.4-x86_64/mongod.conf

# Store data in /usr/local/var/mongodb instead of the default /data/db
# dbpath = /usr/local/var/mongodb

echo "removing mongod.lock file"
rm /usr/local/var/mongodb/mongod.lock

# MongoDB OSX Launchctl Item
echo "Installing MongoDB Launchctl Item and Restarting Mongo";

launchctl stop homebrew.mxcl.mongodb
launchctl unload -w /Users/danielkehoe/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
launchctl load -w /Users/danielkehoe/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
launchctl start homebrew.mxcl.mongodb

open "http://localhost:28017/"

echo "FINISHED";