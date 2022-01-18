#!/bin/bash
set -e

# I am standing over the corpse of best practices
export instance_name=internal-webserver
export nesting=false
export proto=tcp
export listen_ip=127.0.0.1
export internal_port=80
export external_port=81
export script='apt-get update -y && apt-get install curl && curl -s https://github.com/that-github-guy/quick-deploy-scripts/blob/main/scripts/internal-webserver.sh | bash'

bash ../scripts/lxc.sh
