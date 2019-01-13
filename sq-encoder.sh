#!/bin/bash

INPUT_FILE=$1
OUTPUT_FILE=$2

sox -M \
	"|sox "${INPUT_FILE}" -p remix 1v1 hilbert " \
	"|sox "${INPUT_FILE}" -p remix 2v1 hilbert " \
	"|sox "${INPUT_FILE}" -p remix 3v1 hilbert " \
	"|sox "${INPUT_FILE}" -p remix 4v1 hilbert " \
	"|sox "${INPUT_FILE}" -p remix 3v1 hilbert hilbert " \
	"|sox "${INPUT_FILE}" -p remix 4v1 " \
"${OUTPUT_FILE}" remix -m 1,4v0.7,5v0.7 2,3v-0.7,6v0.7


