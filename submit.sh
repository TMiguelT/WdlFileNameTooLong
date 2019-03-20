# The first argument is the hostname to submit this to
zip imports.zip b.wdl c.wdl d.wdl
cromwell submit --host $1 --imports imports.zip a.wdl