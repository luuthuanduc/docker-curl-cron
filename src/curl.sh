#!/bin/sh
set -e

echo "$(date) - Start"
curl --parallel --parallel-immediate --parallel-max 14 --config /app/websites.txt
echo "$(date) End"