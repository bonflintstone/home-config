#! /bin/env bash

COUNT=$(expr $(khal list -of a today eod | wc -l) - 1)
LIST=$(khal list -of '{start-time}-{end-time} {title}' today tomorrow | sed '{:q;N;s/\n/\\n/g;t q}' | sed 's/"//g')

echo "{ \"text\": \"$COUNT\", \"tooltip\": \"$LIST\" }"
