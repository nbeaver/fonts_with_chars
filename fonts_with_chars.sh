#! /usr/bin/env bash
char=$*
hex_codepoint=$(printf '%x' \'"$*")
fc-list ":charset=${hex_codepoint}"
