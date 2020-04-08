#!/bin/bash
die()
{
  echo "ERROR: $1" >&2
  exit 1
}

[ -n "$GCP_PROJECT_ID" ] || export GCP_PROJECT_ID=ansible-272015
[ -n "$GOOGLE_APPLICATION_CREDENTIALS" ] || export GOOGLE_APPLICATION_CREDENTIALS=$(pwd)/secret.json
[ -n "$GCP_REGION" ] || export GCP_REGION=us-east1
[ -n "$GCP_ZONE" ] || export GCP_ZONE=${GCP_REGION}-c
[ -n "$SSH_USER" ] || export SSH_USER=mpisellonio
[ -n "$SSH_ID_FILE" ] || export SSH_ID_FILE=$(pwd)/.ssh/id_rsa
[ -n "$SUFFIX" ] || export SUFFIX=local

# 
[ $# -ne 0 ] || die "no arguments provided"
[ $# -gt 0 -a $# -lt 3 ] || die "wrong number of arguments [$#]"
scenario_name=$1
phase=$2
[ -z "$phase" ] && phase=test

# dump config
echo
echo "                GCP_PROJECT_ID = $GCP_PROJECT_ID"
echo "GOOGLE_APPLICATION_CREDENTIALS = $GOOGLE_APPLICATION_CREDENTIALS"
echo "                    GCP_REGION = $GCP_REGION"
echo "                      GCP_ZONE = $GCP_ZONE"
echo "                      SSH_USER = $SSH_USER"
echo "                   SSH_ID_FILE = $SSH_ID_FILE"
echo "                        SUFFIX = $SUFFIX"
echo

# execute molecule  
molecule $phase --scenario-name=$scenario_name
