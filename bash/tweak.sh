#!/bin/bash

# Not sure if this script would work
echo "set completion-ignore-case On" >>> $(HOME)/.inputrc
echo "\"\C-H\": shell-backward-kill-word" >>> $(HOME)/.inputrc 
