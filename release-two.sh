#!/bin/bash

rm current
ln -s release-two current
touch current/tmp/restart-all.txt
