![nf-VueGen Logo](https://raw.githubusercontent.com/Multiomics-Analytics-Group/nf-vuegen/main/docs/images/nfvuegen_logo.svg)
-----------------
<p align="center">
   nf-VueGen is a nf-core module designed to automate report generation from outputs produced by other modules, subworkflows, or pipelines. 
</p>

| Information | Links |
| :--- | :--- |
| **Module** |![License](https://img.shields.io/github/license/Multiomics-Analytics-Group/vuegen)|
| **Documentation** | |
| **Build** | |
| **Examples** | [![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)][emp-html-demo] [![Streamlit](https://img.shields.io/badge/Streamlit-%23FE4B4B.svg?style=for-the-badge&logo=streamlit&logoColor=white)][emp-st-demo]|
| **Discuss on GitHub** | [![GitHub issues](https://img.shields.io/github/issues/Multiomics-Analytics-Group/nf-vuegen)][issues] [![GitHub pull requests](https://img.shields.io/github/issues-pr/Multiomics-Analytics-Group/nf-vuegen)][pulls]|

## Table of contents:
- [About the project](#about-the-project)
- [Installation](#installation)
- [Execution](#execution)
- [Case studies](#case-studies)
- [Web application deployment](#web-application-deployment)
- [Credits and acknowledgements](#credits-and-acknowledgements)
- [Contact and feedback](#contact-and-feedback)

## About the project
The VueGen [nf-core][nfcore] module is designed to automate report generation from outputs produced by other modules, subworkflows, or pipelines. The module integrates the [VueGen Python library][vuegen] and customizes it for compatibility with the [Nextflow][nextflow] environment. VueGen automates the creation of reports from bioinformatics outputs, supporting formats like PDF, HTML, DOCX, ODT, PPTX, Reveal.js, Jupyter notebooks, and Streamlit web applications. Users simply provide a directory with output files and VueGen compiles them into a structured report.

This module is compatible with existing Nextflow reporting tools such as [MultiQC][multiqc], [AssemblyQC][assemblyqc], and others, allowing their HTML outputs to be embedded as components within VueGen reports. 

An overview of the VueGen workflow is shown in the figure below:

![VueGen Abstract](https://raw.githubusercontent.com/Multiomics-Analytics-Group/vuegen/main/docs/images/vuegen_graph_abstract.png)

A metro-map representation of the VueGen nf-core module is presented below:

![nf-VueGen MetroMap](https://raw.githubusercontent.com/Multiomics-Analytics-Group/nf-vuegen/main/docs/images/metro_map_vuegen.png)

The workflow starts with an input dataset and continues through different stages, generating intermediate outputs in various formats. In the final stage, the VueGen nf-core module collects these outputs from a folder and generates reports in multiple formats.

The VueGen documentation is available at [vuegen.readthedocs.io][vuegen-docs], where you can find detailed information of the package’s classes and functions, installation and execution instructions, and case studies to demonstrate its functionality. 

## Installation

## Execution

## Case studies

## Web application deployment
Once a Streamlit report is generated, it can be deployed as a web application to make it accessible online. There are multiple ways to achieve this:

* **Streamlit Community Cloud**: Deploy your report easily using [Streamlit Cloud][st-cloud], as demonstrated in the [EMP VueGen Demo][emp-st-demo]. The process involves moving the necessary scripts, data, and a requirements.txt file into a GitHub repository. Then, the app can be deployed via the Streamlit Cloud interface. The deployment example is available in the `streamlit-report-example` branch.
* **Standalone Executables**: Convert your Streamlit application into a desktop app by packaging it as an executable file for different operating systems. A detailed explanation of this process can be found in this [Streamlit forum post][st-forum-exe].
* **Stlite**: Run Streamlit apps directly in the browser with [stlite][stlite], a WebAssembly port of Streamlit powered by Pyodide, eliminating the need for a server. It also allows packaging apps as standalone desktop executables using stlite desktop.

These options provide flexibility depending on whether the goal is online accessibility, lightweight execution, or local application distribution.

## Credits and acknowledgements
- Vuegen was developed by the [Multiomics Network Analytics Group (MoNA)][Mona] at the [Novo Nordisk Foundation Center for Biosustainability (DTU Biosustain)][Biosustain].
- VueGen relies on the work of numerous open-source projects like [Streamlit](streamlit), [Quarto][quarto], and others. A big thank you to their authors for making this possible!
- The vuegen logo was designed based on an image created by [Scriberia][scriberia] for The [Turing Way Community][turingway], which is shared under a CC-BY licence. The original image can be found at [Zenodo][zenodo-turingway].

## Contact and feedback
We appreciate your feedback! If you have any comments, suggestions, or run into issues while using VueGen, feel free to [open an issue][new-issue] in this repository. Your input helps us make VueGen better for everyone. 

[streamlit]: https://streamlit.io/ 
[emp-html-demo]: https://multiomics-analytics-group.github.io/vuegen/
[emp-st-demo]: https://earth-microbiome-vuegen-demo.streamlit.app/
[issues]: https://github.com/Multiomics-Analytics-Group/nf-vuegen/issues
[pulls]: https://github.com/Multiomics-Analytics-Group/nf-vuegen/pulls
[nfcore]: https://nf-co.re/
[vuegen]: https://github.com/Multiomics-Analytics-Group/vuegen
[nextflow]: https://www.nextflow.io/
[multiqc]: https://seqera.io/multiqc/
[assemblyqc]: https://github.com/Plant-Food-Research-Open/assemblyqc
[st-cloud]: https://streamlit.io/cloud
[stlite]: https://github.com/whitphx/stlite
[st-forum-exe]: https://discuss.streamlit.io/t/streamlit-deployment-as-an-executable-file-exe-for-windows-macos-and-android/6812
[Mona]: https://multiomics-analytics-group.github.io/
[Biosustain]: https://www.biosustain.dtu.dk/
[scriberia]: https://www.scriberia.co.uk/
[turingway]: https://github.com/the-turing-way/the-turing-way
[zenodo-turingway]: https://zenodo.org/records/3695300
[new-issue]: https://github.com/Multiomics-Analytics-Group/nf-vuegen/issues/new
