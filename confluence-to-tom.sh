#!/bin/bash

for i in `ls`;
do sudo sed -i '/<link rel="stylesheet" href="styles\/site.css" type="text\/css" \/>/a <link rel="stylesheet" href="styles\/custom.css" type="text\/css" \/>' $i;
done;
