#!/usr/bin/env bash


## path
base_dir_path="$(dirname "$(realpath "${0}")")"
plan_dir_path="${base_dir_path}"


## run rundown.sh as login user
"${plan_dir_path}/hooks/rundown.sh"
