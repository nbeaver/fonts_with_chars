#! /usr/bin/env bash
char=$*
hex_codepoint=$(printf '%x' \'"${char}")
fc-list ":charset=${hex_codepoint}"
