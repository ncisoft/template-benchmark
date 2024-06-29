#!/bin/bash

BASE="BaseBenchmark.java"
TARGET="Thymeleaf.java"
SRC_DIR=src/main/java/com/mitchellbosecke/benchmark/

set -e
rm -rf $SRC_DIR/*.java
cp bak/$BASE bak/$TARGET $SRC_DIR

