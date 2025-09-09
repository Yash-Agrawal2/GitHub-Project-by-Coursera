#!/bin/bash
# Simple Interest Calculator
# Author: Your Name
# Calculates simple interest given principal, rate, and time

# Check if 3 arguments are provided
if [ $# -eq 3 ]; then
    P=$1   # Principal
    R=$2   # Rate of interest per year
    T=$3   # Time in years
else
    # Ask user for input if arguments are not provided
    echo "Enter the principal amount:"
    read P
    echo "Enter the annual rate of interest (%):"
    read R
    echo "Enter the time period in years:"
    read T
fi

# Calculate simple interest
SI=$(echo "scale=2; $P * $R * $T / 100" | bc)

echo "The simple interest is: $SI"