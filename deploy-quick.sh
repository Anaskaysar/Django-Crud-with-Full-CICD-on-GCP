#!/bin/bash

# Django Cloud Run Deployment Script (manual deploy)
set -e

# Configuration
PROJECT_ID="django-crud-cicd-gcp"
SERVICE_NAME="django-crud-cicd"
REGION="us-central1"
IMAGE_NAME="gcr.io/${PROJECT_ID}/${SERVICE_NAME}"

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Starting deployment...${NC}"

# Build
echo -e "${BLUE}Building Docker image...${NC}"
gcloud builds submit --tag "$IMAGE_NAME" --quiet

# Deploy
echo -e "${BLUE}Deploying to Cloud Run...${NC}"
gcloud run deploy "$SERVICE_NAME" \
  --image "$IMAGE_NAME" \
  --region "$REGION" \
  --platform managed \
  --allow-unauthenticated \
  --quiet

# Get URL
SERVICE_URL=$(gcloud run services describe "$SERVICE_NAME" --region "$REGION" --format='value(status.url)')

echo -e "${GREEN}Deployment successful!${NC}"
echo -e "${GREEN}URL: ${SERVICE_URL}${NC}"
