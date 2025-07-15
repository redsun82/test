#!/usr/bin/bash


set -ex

bazel build @rules_rust//util/process_wrapper --@rules_rust//rust/toolchain/channel=nightly "$@" # works

bazel build @rules_rust//util/process_wrapper --@rules_rust//rust/settings:experimental_use_cc_common_link --@rules_rust//rust/toolchain/channel=nightly "$@" # broken with 1.88
