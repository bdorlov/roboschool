#!/bin/bash
function pre_build {
    set -ex
    . ./exports.sh
    env
    ./install.sh
    . ./exports.sh
    export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$CPP_HOUSEHOLD/bullet_local_install/lib
    env
}

function run_tests {
    # nm -D /Users/travis/build/openai/roboschool/roboschool/cpp_household.so
    # export DYLD_PRINT_LIBRARIES=1
    # python -c "import roboschool; import gym; gym.make('RoboschoolAnt-v1')"
    echo "hello world"
}

