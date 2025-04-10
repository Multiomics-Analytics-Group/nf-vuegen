# Use the existing vuegen image for nextflow as the base
FROM quay.io/dtu_biosustain_dsp/vuegen:v0.3.2-nextflow

# Set the entrypoint to vuegen
ENTRYPOINT ["vuegen"]