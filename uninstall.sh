#!/bin/bash

home=$(cat .install-data)
rm $home/.cowrc
sed -i '/.cowrc/d' $home/.bashrc
rm .install-data