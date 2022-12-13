# pd_to_df.jl

A function to neatly convert pandas dataframes (Python) into Julia.

Useful for when pulling datasets from python libraries (yfinance, etc).

Details:
- Pandas dataframes feature indexes, which Julia dataframes don't have, hence they're placed in the "Index" column when converted.
- Data types in index and each column are inferred by Julia.
