using PyCall
using DataFrames

function pd_to_df(df_pd)
    df = DataFrame()
    df[!, "Index"] = convert(Array, df_pd.index)
    for col in df_pd.columns
        df[!, col] = convert(Array, df_pd[col].values)
    end
    df
end