#!/bin/bash

echo "Compiling Ride Sharing System"

g++ -std=c++17 *.cpp -o rideshare

if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

echo "Compilation successful."
echo "Running program..."
echo "========================"

./rideshare