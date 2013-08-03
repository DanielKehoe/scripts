#!/usr/bin/env /bin/bash --login
PROJECT=$1
echo "Building" $PROJECT
mkdir $PROJECT
cd $PROJECT
rvm use ruby-2.0.0@$PROJECT --rvmrc --create
gem install rails
rails new . -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb
echo "FINISHED";
exit 0
