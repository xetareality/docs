#!/bin/bash

# # Modules
# for filename in docs/modules/*.md; do
#     pandoc -o papers/handbook/modules/$(basename "${filename%.*}").pdf ${filename}
# done

# # Programs
# for filename in docs/programs/*.md; do
#     pandoc -o papers/handbook/programs/$(basename "${filename%.*}").pdf ${filename}
# done

# pandoc -o papers/handbook/cover.pdf docs/handbook.md

pandoc docs/handbook.md docs/modules/*.md docs/programs/*.md -o papers/handbook/handbook.pdf