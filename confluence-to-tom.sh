#!/bin/bash

for i in `ls`;
do sudo sed -i '/<link rel="stylesheet" href="styles\/site.css" type="text\/css" \/>/a <link rel="stylesheet" href="styles\/custom.css" type="text\/css" \/>' $i;
sudo sed -i '/<div id="footer-logo"><a href="http:\/\/www.atlassian.com\/">Atlassian<\/a><\/div>/d' $i;
done;
