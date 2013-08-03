#!/usr/bin/env bash

echo "publishing to the railsapps.github.com site"
cd ~/workspace/railsapps/railsapps.github.com.wiki
gollum-site generate
echo "GENERATED";
cp -R _site/* ../railsapps.github.com
rm -rf _site/
cd ../railsapps.github.com
mv Home.html index.html
thor publish:fix_titles
thor publish:update_old_articles
thor publish:move_tutorials
# echo "COMMITTING";
# git add .
# git commit -am "update website"
# git push origin master
# open "http://railsapps.github.io/"
echo "FINISHED";
exit 0
