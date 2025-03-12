#!/usr/bin/env nextflow
include { VUEGEN } from './modules/VUEGEN.nf'

// Validate input: ensure only one of config or directory is provided
if ((params.config && params.directory) || (!params.config && !params.directory)) {
    error "Provide either --config or --directory, but not both."
}

workflow {
    // Create a channel for the report type
    report_type_ch = Channel.value(params.report_type)

    // Handle configuration file and directory inputs
    if (params.config) {
        file_ch = Channel.fromPath(params.config)
        input_type_ch = Channel.value('config')
        output_ch = VUEGEN(input_type_ch, file_ch, report_type_ch)

    } else if (params.directory) {
        dir_ch = Channel.fromPath(params.directory, type: 'dir', followLinks: true)
        input_type_ch = Channel.value('directory')
        output_ch = VUEGEN(input_type_ch, dir_ch, report_type_ch)

    }
}