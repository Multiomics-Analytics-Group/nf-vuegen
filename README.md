![nf-VueGen Logo](https://raw.githubusercontent.com/Multiomics-Analytics-Group/nf-vuegen/main/docs/images/nfvuegen_logo.svg)
-----------------
<p align="center">
   nf-VueGen is a nf-core module designed to automate report generation from outputs produced by other modules, subworkflows, or pipelines. 
</p>

| Information | Links |
| :--- | :--- |
| **Module** | [![License](https://img.shields.io/github/license/Multiomics-Analytics-Group/nf-vuegen)][nf-vuegen-license] |
| **Documentation** | [![View - Documentation](https://img.shields.io/badge/view-Documentation-blue?style=flat)][vuegen-docs] |
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
- [Citation](#citation)
- [Contact and feedback](#contact-and-feedback)

## About the project
The VueGen [nf-core][nfcore] module is designed to automate report generation from outputs produced by other modules, subworkflows, or pipelines. The module integrates the [VueGen Python library][vuegen] and customizes it for compatibility with the [Nextflow][nextflow] environment. VueGen automates the creation of reports from bioinformatics outputs, supporting formats like PDF, HTML, DOCX, ODT, PPTX, Reveal.js, Jupyter notebooks, and Streamlit web applications. Users simply provide a directory with output files and VueGen compiles them into a structured report.

This module is compatible with existing Nextflow reporting tools such as [MultiQC][multiqc], [AssemblyQC][assemblyqc], and others, allowing their HTML outputs to be embedded as components within VueGen reports. 

An overview of the VueGen workflow is shown in the figure below:

![VueGen Abstract](https://raw.githubusercontent.com/Multiomics-Analytics-Group/vuegen/main/docs/images/vuegen_graph_abstract.png)

A metro-map representation of the VueGen nf-core module is presented below:

![nf-VueGen MetroMap](https://raw.githubusercontent.com/Multiomics-Analytics-Group/nf-vuegen/main/docs/images/metro_map_vuegen.svg)

The workflow starts with an input dataset and continues through different stages, generating intermediate outputs in various formats. In the final stage, the VueGen nf-core module collects these outputs from a folder and generates reports in multiple formats.

The VueGen documentation is available at [vuegen.readthedocs.io][vuegen-docs], where you can find detailed information of the package’s classes and functions, installation and execution instructions, and case studies to demonstrate its functionality. 

## Installation
We are currently working on the integration of VueGen with the nf-core framework. This process can take some time because it requires the approval of the nf-core community. In the meantime, you can clone this repository and use nf-VueGen as a standalone Nextflow module. The `main.nf` file provides an example of how to use the nf-VueGen module in a Nextflow pieline. 

### Dependencies
You should have [Nextflow][nextflow] and [Docker][docker] installed on your system to run nf-VueGen. We use Docker to containetize the nf-VueGen environment, ensuring reproducibility and compatibility across different systems. The Docker image is available at [quay.io/dtu_biosustain_dsp/vuegen][vuegen-docker-quay] and is automatically pulled by Nextflow when running the pipeline. 

## Execution
> [!IMPORTANT]
> Here we use the `Basic_example_vuegen_demo_notebook` directory and the `Basic_example_vuegen_demo_notebook.yaml` configuration file as examples, which are available in the `docs/example_data` and `docs/example_config_files` folders, respectively. Make sure to clone this reposiotry to access these contents, or use your own directory and configuration file.

Run nf-VueGen using a directory with the following command:

```bash
nextflow run main.nf --directory docs/example_data/Basic_example_vuegen_demo_notebook --report_type html
```

It's also possible to provide a configuration file instead of a directory:

```bash
nextflow run main.nf --config docs/example_config_files/Basic_example_vuegen_demo_notebook_config.yaml --report_type html
```

The current report types supported by nf-VueGen are:
* Streamlit
* HTML
* PDF
* DOCX
* ODT
* Reveal.js
* PPTX
* Jupyter

## Case studies
nf-VueGen’s functionality is demonstrated through two case studies:

**1. Predefined Directory**

This introductory case study uses a predefined directory with plots, dataframes, Markdown, and HTML components. Users can generate reports in different formats and modify the configuration file to customize the report structure. 

To test this case study, follow the instructions from the [Execution section](#execution), where `Basic_example_vuegen_demo_notebook` directory and `Basic_example_vuegen_demo_notebook.yaml` configuration file are used.

**2. Earth Microbiome Project Data**

This advanced case study demonstrates the application of nf-VueGen in a real-world scenario using data from the [Earth Microbiome Project (EMP)][emp]. The EMP is an initiative to characterize global microbial taxonomic and functional diversity. The notebook process the EMP data, create plots, dataframes, and other components, and organize outputs within a directory to produce reports. Report content and structure can be adapted by modifying the configuration file. Each report consists of sections on exploratory data analysis, metagenomics, and network analysis.

To test this case study, use the `Earth_microbiome_vuegen_demo_notebook` directory and the `Earth_microbiome_vuegen_demo_notebook.yaml` configuration file available in the `docs/example_data` and `docs/example_config_files` folders, respectively.

> [!NOTE]
> The EMP case study is available online as [HTML][emp-html-demo] and [Streamlit][emp-st-demo] reports.

## Web application deployment
Once a Streamlit report is generated, it can be deployed as a web application to make it accessible online. There are multiple ways to achieve this:

* **Streamlit Community Cloud**: Deploy your report easily using [Streamlit Cloud][st-cloud], as demonstrated in the [EMP VueGen Demo][emp-st-demo]. The process involves moving the necessary scripts, data, and a requirements.txt file into a GitHub repository. Then, the app can be deployed via the Streamlit Cloud interface. The deployment example is available in the `streamlit-report-example` branch.
* **Standalone Executables**: Convert your Streamlit application into a desktop app by packaging it as an executable file for different operating systems. A detailed explanation of this process can be found in this [Streamlit forum post][st-forum-exe].
* **Stlite**: Run Streamlit apps directly in the browser with [stlite][stlite], a WebAssembly port of Streamlit powered by Pyodide, eliminating the need for a server. It also allows packaging apps as standalone desktop executables using stlite desktop.

These options provide flexibility depending on whether the goal is online accessibility, lightweight execution, or local application distribution.

## Credits and acknowledgements
- nf-VueGen was developed by the [Multiomics Network Analytics Group (MoNA)][Mona] at the [Novo Nordisk Foundation Center for Biosustainability (DTU Biosustain)][Biosustain].
- nf-VueGen relies on the work of numerous open-source projects like [Streamlit](streamlit), [Quarto][quarto], and others. A big thank you to their authors for making this possible!
- The nf-VueGen logo was designed based on an image created by [Scriberia][scriberia] for The [Turing Way Community][turingway], which is shared under a CC-BY licence. The original image can be found at [Zenodo][zenodo-turingway].

## Citation
If you use nf-VueGen in your research or publications, please cite it as follows:

**APA:**

Ayala-Ruano, S., Webel, H., & Santos, A. (2025). *VueGen: Automating the generation of scientific reports*. bioRxiv. https://doi.org/10.1101/2025.03.05.641152

**BibTeX:**

```bibtex
@article{Ayala-Ruano2025VueGen,
  author  = {Ayala-Ruano, Sebastian and Webel, Henry and Santos, Alberto},
  title   = {VueGen: Automating the generation of scientific reports},
  journal = {bioRxiv},
  year    = {2025},
  doi     = {10.1101/2025.03.05.641152},
  publisher = {Cold Spring Harbor Laboratory},
  url     = {https://www.biorxiv.org/content/10.1101/2025.03.05.641152},
  eprint = {https://www.biorxiv.org/content/10.1101/2025.03.05.641152.full.pdf}
}
```

## Contact and feedback
We appreciate your feedback! If you have any comments, suggestions, or run into issues while using VueGen, feel free to [open an issue][new-issue] in this repository. Your input helps us make nf-VueGen better for everyone. 

[nf-vuegen-license]: https://github.com/Multiomics-Analytics-Group/nf-vuegen/blob/main/LICENSE
[vuegen-docs]: https://vuegen.readthedocs.io/
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
[docker]: https://www.docker.com/
[vuegen-docker-quay]: https://quay.io/repository/dtu_biosustain_dsp/vuegen
[emp]: https://earthmicrobiome.org/
[quarto]: https://quarto.org/
[st-cloud]: https://streamlit.io/cloud
[stlite]: https://github.com/whitphx/stlite
[st-forum-exe]: https://discuss.streamlit.io/t/streamlit-deployment-as-an-executable-file-exe-for-windows-macos-and-android/6812
[Mona]: https://multiomics-analytics-group.github.io/
[Biosustain]: https://www.biosustain.dtu.dk/
[scriberia]: https://www.scriberia.co.uk/
[turingway]: https://github.com/the-turing-way/the-turing-way
[zenodo-turingway]: https://zenodo.org/records/3695300
[new-issue]: https://github.com/Multiomics-Analytics-Group/nf-vuegen/issues/new
