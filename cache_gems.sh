#!/bin/bash
mkdir vendor/cache
bundle package
for gem in $(cat gems_list.txt);
do
	wget https://rubygems.org/gems/$gem -O vendor/cache/$gem
done
