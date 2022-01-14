#!/bin/bash
echo -e "#\!/bin/bash\nt=$1" > run.sh &&\
    cat run.sh.tmp >> run.sh &&\
    chmod +x run.sh

docker build -t subdomain_enum . && docker run --rm -t subdomain_enum
