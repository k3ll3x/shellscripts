#!/bin/bash
sensors | grep '°C' | head -n 1 | awk '{print $2}'
