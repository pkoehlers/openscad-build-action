#!/bin/bash -l

cmd="openscad -o $GITHUB_WORKSPACE/$2 $GITHUB_WORKSPACE/$1"

if [[ -n "$3" ]]; then
  cmd="$cmd -p $GITHUB_WORKSPACE/$3"
fi

if [[ -n "$4" ]]; then
  cmd="$cmd -P $4"
fi

$cmd
