# My professional résumé
Revisions are automatically built and published to Azure Blob Storage. The latest build at any given time can be found at [https://atcb.blob.core.windows.net/public/resume/resume.pdf](https://atcb.blob.core.windows.net/public/resume/resume.pdf).

## Building

Prerequisites: Docker

```bash
./build.sh
```

Produces outputs and logs in `dist/`.

## Continuous deployment

A [VSTS project](https://atcb.visualstudio.com/resume/) builds on every push to `master`, then publishes PDFs to Azure Blob Storage: one as `resume.pdf`, another as `resume-{commit}.pdf`, where `{commit}` is the 7-character commit hash that was built.