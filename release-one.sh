#!/bin/bash

rm current
ln -s release-one current
torquebox deploy current
