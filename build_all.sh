#!/bin/bash

for i in *.app; do
    ./build.sh $i "$@"
done

./build_update_repo.sh
