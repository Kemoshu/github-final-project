#!/bin/bash
# Simple Interest Calculator Script

# Prompt user for principal, rate, and time
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (in %): " rate
read -p "Enter the time period in years: " time

# Calculate simple interest: SI = P * R * T / 100
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "The simple interest for principal $principal at rate $rate% for $time years is: $interest"
