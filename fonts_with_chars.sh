#! /usr/bin/env bash
char=$*
printf '%x' \'"$*" | xargs -I{} fc-list ":charset={}"
