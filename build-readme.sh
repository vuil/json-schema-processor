#!/bin/bash

cat /cell/README.md > /cell/DESC.md
/bin/process-schema.sh

echo "## Sample Configuration" >> /cell/DESC.md
cat /cell/config-default.json >> /cell/DESC.md

echo "## Configuration Parameters" >> /cell/DESC.md
cat /cell/schema-input.json.md >> /cell/DESC.md

