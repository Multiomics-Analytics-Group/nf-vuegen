# Build images for nextflow

In order to update the nf-core module of vuegen 
([modules/nf-core/vuegen](https://github.com/nf-core/modules/tree/master/modules/nf-core/vuegen)) to a new version, the corresponding docker image needs to be build and pushed to quay.io and then a PR with the updates needs to be submitted to nf-core/modules.


## Upload to Quay.io

Update the container:
  - This can be done using the [`build-push.sh`](build-push.sh) script
    (after [login to quay.io](https://docs.quay.io/guides/login.html) using `docker login quay.io` 
    and activating multiplatform builds for your docker driver, e.g.
   [docker desktop](https://docs.docker.com/desktop/features/containerd/#enable-the-containerd-image-store).)
  - by uploading `nextflow.Dockerfile` (start new build) and specifying a new tag on quay.io itself (being logged-in):
    [https://quay.io/repository/dtu_biosustain_dsp/vuegen?tab=builds](quay.io/repository/dtu_biosustain_dsp/vuegen?tab=builds) and
    [https://quay.io/repository/dtu_biosustain_dsp/vuegen?tab=tags](quay.io/repository/dtu_biosustain_dsp/vuegen?tab=tags)

General docs: [https://docs.quay.io/guides/building.html](docs.quay.io/guides/building.html)


## Update nf-core module

Follow the instructions as if you would create a new module:
[https://nf-co.re/docs/tutorials/nf-core_components/components](nf-co.re/docs/tutorials/nf-core_components/components)

- update `environment.yml` to specify the new version of vuegen on bioconda (this is an automated update)
- update `main.nf` to specify the new version of the container on quay.io (this is a manual update described in the step above)

Then submit a PR to nf-core/modules, e.g. 

-  [https://github.com/nf-core/modules/pull/9201](nf-core/modules/pull/9201)
