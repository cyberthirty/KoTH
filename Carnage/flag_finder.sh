#!/bin/bash

find / -type f -name '*.txt' -o -path '*/.*' -type f -name '*.txt' 2>/dev/null | grep flag
