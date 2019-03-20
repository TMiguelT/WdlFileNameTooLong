# The first argument is the hostname to submit this to
zip imports.zip b.wdl c.wdl d.wdl
curl -X POST "$1/api/workflows/v1" -H "accept: application/json" -H "Content-Type: multipart/form-data" -F "workflowSource=@a.wdl" -F "workflowDependencies=@imports.zip;type=application/zip"
