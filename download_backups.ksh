#!/bin/bash

rsync -avzhe 'ssh -p ####' --progress username@hostname.com:/backup ~/Desktop
