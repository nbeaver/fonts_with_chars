#! /usr/bin/env bash
usage() {
    >&2 printf "Usage: %s character\n" "$0"
}
if test $# -eq 0
then
    usage
    exit 1
elif test $# -ne 1
then
    >&2 printf 'Error: single characters only.\n'
    usage
    exit 1
elif test $* = "-h"
then
    usage
    exit 1
fi
char=$*
hex_codepoint=$(printf '%x' \'"${char}")
fc-list ":charset=${hex_codepoint}"
