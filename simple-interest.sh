#!/bin/bash

# --- Simple Interest Calculator (simple-interest.sh) ---

# Function to check if the input is a valid number
check_number() {
    if ! [[ $1 =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Error: '$1' is not a valid number."
        exit 1
    fi
}

# 1. Get Principal Amount (P)
echo "Enter the Principal Amount (P):"
read P
check_number $P

# 2. Get Rate of Interest (R)
echo "Enter the Annual Rate of Interest (R in %):"
read R
check_number $R

# 3. Get Time Period (T)
echo "Enter the Time Period (T in years):"
read T
check_number $T

# --- Calculation ---
# Bash arithmetic expansion $(()) only handles integers.
# We must use 'bc' (basic calculator) for floating-point math.

# SI = (P * R * T) / 100
# Scale=2 ensures the result is shown with 2 decimal places (for currency)
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)

# Total Amount = P + SI
TOTAL_AMOUNT=$(echo "scale=2; $P + $SI" | bc)


# --- Output ---
echo ""
echo "--- Calculation Results ---"
echo "Principal:           $P"
echo "Rate:                $R%"
echo "Time:                $T years"
echo "Simple Interest (SI):  $SI"
echo "Total Amount Due:      $TOTAL_AMOUNT"
echo "---------------------------"

exit 0
