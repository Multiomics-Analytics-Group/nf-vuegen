#!/usr/bin/env nextflow
// Validate input: ensure only one of config or directory is provided
if ((params.config && params.directory) || (!params.config && !params.directory)) {
    error "Provide either --config or --directory, but not both."
}

// Define the process to run VueGen
process VUEGEN {

    // Set the output directory
    publishDir 'nf_container_results', mode: 'copy'

    input:
        path input_path
        val report_type
        val input_type

    output:
        path "*report"

    script:
    """
    if [ "${input_type}" == "config" ]; then
        echo "Running VueGen with config file: $input_path"
        vuegen --config $input_path --report_type $report_type
    elif [ "${input_type}" == "directory" ]; then
        echo "Running VueGen with directory: $input_path"
        vuegen --directory $input_path --report_type $report_type
    fi
    """
}

workflow {
    // Create a channel for the report type
    report_type_ch = Channel.value(params.report_type)

    if (params.config) {
        // Handle configuration file
        file_ch = Channel.fromPath(params.config)
        output_ch = VUEGEN(file_ch, report_type_ch, Channel.value('config'))
    } else if (params.directory) {
        // Handle directory
        dir_ch = Channel.fromPath(params.directory, type: 'dir', followLinks: true)
        output_ch = VUEGEN(dir_ch, report_type_ch, Channel.value('directory'))
    }
}