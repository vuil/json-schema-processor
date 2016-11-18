#!/bin/bash

SCHEMA=${SCHEMA:-/cell/schema-input.json}

jinja2 convert-schema.j2 $SCHEMA > $SCHEMA.md
