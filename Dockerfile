# Source
FROM ubuntu:22.04

# Update sources
RUN apt-get update

# Install required packages
RUN apt-get install -y nodejs npm poppler-utils

# Install npm packages
RUN npm install -g fnb-xero-pdf

# Run program
CMD ["fnb-xero-pdf", "/data"]

# Volume
WORKDIR /data
VOLUME ["/data"]

# Lables
LABEL "com.maxvdm.fnb-zero-pdf"="Max van der Merwe"
LABEL org.opencontainers.image.version="1"
LABEL org.opencontainers.image.description="Convert FNB statement pdfs to csv files for import into Xero."
LABEL org.opencontainers.image.source="https://github.com/maxvdmerwe/fnb-xero-pdf"
