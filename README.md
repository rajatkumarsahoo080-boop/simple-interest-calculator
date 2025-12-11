# Simple Interest Calculator Project

This project demonstrates a simple calculator for computing simple interest (SI) and the total amount accumulated over a period.

## The Formula

The calculation is based on the standard simple interest formula:

$$SI = \frac{P \times R \times T}{100}$$

Where:
* **P**: Principal Amount (Initial Investment)
* **R**: Annual Rate of Interest (in percent)
* **T**: Time (in years)

The Total Amount ($A$) is:
$$A = P + SI$$

## How to Use the Calculator (Code Details)

The calculator is implemented in Python (see `simple_interest.py`).

**Function:** `calculate_simple_interest(principal, rate, time)`

**Inputs:**
1.  `principal` (float/int): The initial sum of money.
2.  `rate` (float/int): The annual rate as a percentage (e.g., enter `5` for 5%).
3.  `time` (float/int): The duration in years.

**Outputs:**
* Returns a tuple: (Simple Interest, Total Amount)

## Example Calculation

| Variable | Value | Description |
| :--- | :--- | :--- |
| **P** | \$1000 | Principal |
| **R** | 5\% | Rate |
| **T** | 3 years | Time |

**Calculation:**
$SI = \frac{1000 \times 5 \times 3}{100} = \frac{15000}{100} = \$150$

**Total Amount:**
$A = 1000 + 150 = \$1150$
