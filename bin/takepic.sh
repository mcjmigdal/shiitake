#!/usr/bin/bash
# By Migdal
# Take picture of the grow box
outdir="${HOME}/shiitake/data/img"
DATE=$(date +"%Y-%m-%d_%H%M")
raspistill -v -n -t 1 -a 12 -ae 64 -th none -q 10 -o ${outdir}/${DATE}.jpg
