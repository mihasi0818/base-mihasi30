#!/bin/bash
set -e

rm -f /new090/tmp/pids/server.pid

exec "$@"
