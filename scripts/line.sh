#!/usr/bin/env bash
# print nth line of input
# usage:
# cat text.txt | line 10
set -e
set -u

head -n "$1" | tail -n 1
