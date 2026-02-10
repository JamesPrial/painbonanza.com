#!/usr/bin/env bash
set -euo pipefail

# Manual deploy fallback: build locally, SCP to VM via gcloud
# Usage: ./deploy.sh

ZONE="us-central1-a"
INSTANCE="painbonanza-web"
WEBROOT="/var/www/html"

echo "Building..."
npm run build

echo "Uploading dist/ to VM..."
gcloud compute scp --recurse dist/* deploy@${INSTANCE}:/tmp/deploy-staging/ --zone=${ZONE} --quiet

echo "Swapping into webroot..."
gcloud compute ssh deploy@${INSTANCE} --zone=${ZONE} --quiet --command="rm -rf ${WEBROOT}/* && cp -r /tmp/deploy-staging/* ${WEBROOT}/ && rm -rf /tmp/deploy-staging"

echo "Done! Site deployed to ${INSTANCE}."
