# Use the existing vuegen image for nextflow as the base
ARG BASE_VERSION
FROM quay.io/dtu_biosustain_dsp/vuegen:${BASE_VERSION}

# Set the entrypoint to vuegen
ENTRYPOINT ["vuegen"]