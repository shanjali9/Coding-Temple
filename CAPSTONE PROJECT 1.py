# CAPSTONE PROJECT 1
# -Shanjali Arul, June 2024

# DATASET
# IHME: USA Health Care Spending by Payer 1996-2016 (https://www.kaggle.com/datasets/adarshsng/usa-health-care-spending-19962016)

# The Disease Expenditure Project (DEX) at IHME produced estimates for US spending on health care according to 3 types of payers (public insurance [including Medicare, Medicaid, and other government programs], private insurance, or out-of-pocket payments) and by health condition, age group, sex, and type of care for 1996 through 2016. 
# Types of care include ambulatory care, inpatient care, nursing care facility stay, emergency department care, dental care, prescribed pharmaceutical care, and government administration and net cost of insurance programs.
# Government budgets, insurance claims, facility records, household surveys, and official US records from 1996 through 2016 were used to produce the results. 
# Spending estimates were produced for 154 conditons, which were aggregated into 14 health categories. 
# This dataset contains estimates for the aggregate health categories.

# FORMAT 
# 1 csv file, tabular 

# HYPOTHESIS
# Healthcare Spending and Type of Payer: The type of payer (public insurance, private insurance, out-of-pocket) could significantly impact the amount of healthcare spending. 
# For instance, out-of-pocket payments might be lower than insurance payments due to the financial constraints of individuals.

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

