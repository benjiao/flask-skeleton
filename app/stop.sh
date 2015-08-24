#!/bin/bash

kill -INT `cat /tmp/skeleton.pid` && rm /tmp/skeleton.pid && echo "Flask app stopped!"
