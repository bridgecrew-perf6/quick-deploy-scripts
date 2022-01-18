#!/bin/bash
set -e

# TODO: make consts uppercase
lxc launch ubuntu:18.04 $instance_name -c security.nesting=$nesting
lxc config device add $instance_name auto$instance_name proxy listen=tcp:0.0.0.0:$external_port connect=tcp:127.0.0.1:$internal_port
lxc exec $instance_name -- $script
