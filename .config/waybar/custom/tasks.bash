#! /bin/env bash

source ~/.todo/config

cat $TODO_FILE | wc -l
cat $TODO_FILE | tr -d '\n'
