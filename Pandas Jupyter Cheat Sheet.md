Pandas Jupyter Cheat Sheet.
---------------------------

Started on: 3/8/2023, 8:43:50 PM

You
---

 

pandas Jupiter notebook cheat shee

ChatGPT
-------

Here's a cheat sheet for using Pandas in Jupyter Notebook:

### Importing Pandas

```python
import pandas as pd
```

### Creating a DataFrame

```python
df = pd.DataFrame({'Column1': [value1, value2, value3, ...],
                   'Column2': [value1, value2, value3, ...],
                   ...
                  })
```

### Reading data from a CSV file

```python
df = pd.read_csv('filename.csv')
```

### Basic DataFrame Operations

```python
df.head(n) # displays the first n rows of the DataFrame
df.tail(n) # displays the last n rows of the DataFrame
df.shape # returns the number of rows and columns in the DataFrame
df.info() # provides information about the DataFrame, such as the number of non-null values in each column
df.describe() # returns statistics for the numerical columns in the DataFrame
df.columns # returns a list of column names in the DataFrame
df.index # returns a list of row indices in the DataFrame
df.dtypes # returns the data types of the columns in the DataFrame
```

### Selecting Columns

```python
df['Column'] # selects a single column as a Series
df[['Column1', 'Column2']] # selects multiple columns as a DataFrame
```

### Filtering Rows

```python
df[df['Column'] > value] # selects rows where Column is greater than value
df[(df['Column1'] > value1) & (df['Column2'] < value2)] # selects rows where Column1 is greater than value1 and Column2 is less than value2
```

### Sorting Data

```python
df.sort_values('Column') # sorts the DataFrame by Column in ascending order
df.sort_values('Column', ascending=False) # sorts the DataFrame by Column in descending order
```

### Grouping Data

```python
df.groupby('Column').mean() # groups the DataFrame by Column and calculates the mean of each group
df.groupby(['Column1', 'Column2']).sum() # groups the DataFrame by Column1 and Column2 and calculates the sum of each group
```

### Aggregating Data

```python
df['Column'].sum() # calculates the sum of Column
df['Column'].mean() # calculates the mean of Column
df['Column'].max() # returns the maximum value in Column
df['Column'].min() # returns the minimum value in Column
```

### Merging DataFrames

```python
merged_df = pd.merge(df1, df2, on='Column') # merges df1 and df2 on Column
```

### Exporting Data

```python
df.to_csv('filename.csv', index=False) # exports the DataFrame to a CSV file
```

You
---

 

Aggregating Data cheatsheet

ChatGPT
-------

Here's a cheatsheet for aggregating data using Pandas:

### Summarizing Data

```python
df.sum()  # Sum of all elements in DataFrame
df.sum(axis=0)  # Sum of each column
df.sum(axis=1)  # Sum of each row
df.mean()  # Mean of all elements in DataFrame
df.mean(axis=0)  # Mean of each column
df.mean(axis=1)  # Mean of each row
df.median()  # Median of all elements in DataFrame
df.median(axis=0)  # Median of each column
df.median(axis=1)  # Median of each row
df.mode()  # Mode of all elements in DataFrame
df.mode(axis=0)  # Mode of each column
df.mode(axis=1)  # Mode of each row
df.min()  # Minimum value in DataFrame
df.min(axis=0)  # Minimum value in each column
df.min(axis=1)  # Minimum value in each row
df.max()  # Maximum value in DataFrame
df.max(axis=0)  # Maximum value in each column
df.max(axis=1)  # Maximum value in each row
df.std()  # Standard deviation of all elements in DataFrame
df.std(axis=0)  # Standard deviation of each column
df.std(axis=1)  # Standard deviation of each row
df.var()  # Variance of all elements in DataFrame
df.var(axis=0)  # Variance of each column
df.var(axis=1)  # Variance of each row
df.describe()  # Summary statistics for each column
df.info()  # Information about DataFrame
```

### Counting Data

```python
df.count()  # Count of non-null values in each column
df.count(axis=1)  # Count of non-null values in each row
df.value_counts()  # Count of unique values in each column
```

### Aggregating with GroupBy

```python
df.groupby('column_name').mean()  # Mean of each column for each group
df.groupby('column_name').sum()  # Sum of each column for each group
df.groupby('column_name').size()  # Count of rows in each group
df.groupby(['column_name1', 'column_name2']).mean()  # Mean of each column for each combination of column_name1 and column_name2
df.groupby(['column_name1', 'column_name2']).agg(['mean', 'sum'])  # Mean and sum of each column for each combination of column_name1 and column_name2
df.groupby('column_name').agg({'column1': 'sum', 'column2': 'mean'})  # Sum of column1 and mean of column2 for each group
```

You
---

 

Exporting Data cheatsheet

ChatGPT
-------

Here's a cheatsheet for exporting data using Pandas:

### Exporting to CSV

```python
df.to_csv('filename.csv', index=False)  # Export DataFrame to CSV file without index
df.to_csv('filename.csv', index=True)  # Export DataFrame to CSV file with index
```

### Exporting to Excel

```python
df.to_excel('filename.xlsx', sheet_name='Sheet1', index=False)  # Export DataFrame to Excel file without index
df.to_excel('filename.xlsx', sheet_name='Sheet1', index=True)  # Export DataFrame to Excel file with index
```

### Exporting to JSON

```python
df.to_json('filename.json', orient='records')  # Export DataFrame to JSON file
```

### Exporting to SQL Database

```python
import sqlite3

conn = sqlite3.connect('database.db')  # Create a connection to the database

df.to_sql('table_name', conn, if_exists='replace', index=False)  # Export DataFrame to SQL database
```

### Exporting to HTML

```python
df.to_html('filename.html', index=False)  # Export DataFrame to HTML file without index
df.to_html('filename.html', index=True)  # Export DataFrame to HTML file with index
```

### Exporting to Clipboard

```python
df.to_clipboard()  # Export DataFrame to clipboard
```

Note: The clipboard method is useful for quickly copying and pasting data to other applications, such as Excel or Google Sheets.

You
---

 

Filtering data cheatsheet

ChatGPT
-------

Here's a cheatsheet for filtering data using Pandas:

### Filtering Rows by Condition

```python
df[df['column_name'] > value]  # Select rows where column_name is greater than value
df[df['column_name'] >= value]  # Select rows where column_name is greater than or equal to value
df[df['column_name'] < value]  # Select rows where column_name is less than value
df[df['column_name'] <= value]  # Select rows where column_name is less than or equal to value
df[df['column_name'] == value]  # Select rows where column_name is equal to value
df[df['column_name'].isin(list_of_values)]  # Select rows where column_name is in list_of_values
df[~df['column_name'].isin(list_of_values)]  # Select rows where column_name is not in list_of_values
df[df['column_name'].str.contains('substring')]  # Select rows where column_name contains 'substring'
df[df['column_name'].str.startswith('prefix')]  # Select rows where column_name starts with 'prefix'
df[df['column_name'].str.endswith('suffix')]  # Select rows where column_name ends with 'suffix'
```

### Filtering Rows by Multiple Conditions

```python
df[(df['column_name1'] > value1) & (df['column_name2'] < value2)]  # Select rows where column_name1 is greater than value1 and column_name2 is less than value2
df[(df['column_name1'] > value1) | (df['column_name2'] < value2)]  # Select rows where column_name1 is greater than value1 or column_name2 is less than value2
df[df['column_name'].isin(list_of_values) & (df['column_name'] > value)]  # Select rows where column_name is in list_of_values and column_name is greater than value
df[df['column_name'].isin(list_of_values) | (df['column_name'] > value)]  # Select rows where column_name is in list_of_values or column_name is greater than value
```

### Filtering Rows by Null Values

```python
df[df['column_name'].isnull()]  # Select rows where column_name is null
df[df['column_name'].notnull()]  # Select rows where column_name is not null
```

### Filtering Rows by Index

```python
df.loc[index_value]  # Select row with index_value
df.loc[start_index:end_index]  # Select rows with index values between start_index and end_index
df.loc[[index1, index2, ...]]  # Select rows with index values index1, index2, ...
df.iloc[row_number]  # Select row at row_number
df.iloc[start_index:end_index]  # Select rows between start_index and end_index (exclusive of end_index)
df.iloc[[row_number1, row_number2, ...]]  # Select rows at row_number1, row_number2, ...
```

Note: The loc method is used to filter rows by label, while the iloc method is used to filter rows by integer position.

You
---

 

droping and including columns

ChatGPT
-------

Here's a cheatsheet for dropping and including columns using Pandas:

### Dropping Columns

```python
df.drop('column_name', axis=1, inplace=True)  # Drop column_name from DataFrame (inplace=True modifies DataFrame in place)
df.drop(['column_name1', 'column_name2'], axis=1, inplace=True)  # Drop column_name1 and column_name2 from DataFrame
df.drop(df.columns[3], axis=1, inplace=True)  # Drop column at index 3 from DataFrame
df.drop(df.columns[[2, 4]], axis=1, inplace=True)  # Drop columns at index 2 and 4 from DataFrame
```

### Including Columns

```python
df[['column_name1', 'column_name2']]  # Select columns column_name1 and column_name2 from DataFrame
df.loc[:, ['column_name1', 'column_name2']]  # Select columns column_name1 and column_name2 from DataFrame using loc method
df.iloc[:, [1, 3]]  # Select columns at index 1 and 3 from DataFrame using iloc method
```

### Renaming Columns

```python
df.rename(columns={'old_column_name': 'new_column_name'}, inplace=True)  # Rename column old_column_name to new_column_name (inplace=True modifies DataFrame in place)
df.columns = ['new_column_name1', 'new_column_name2']  # Rename all columns in DataFrame
```

Note: The drop method is used to drop columns from a DataFrame, while the double bracket notation or the loc/iloc method is used to select specific columns. The rename method is used to rename columns in a DataFrame.

You
---

 

grouping data

ChatGPT
-------

Here's a cheatsheet for grouping data using Pandas:

### Grouping Data

```python
df.groupby('column_name')  # Group DataFrame by column_name
df.groupby(['column_name1', 'column_name2'])  # Group DataFrame by column_name1 and column_name2
```

### Aggregating Grouped Data

```python
df.groupby('column_name').sum()  # Sum of each column for each group
df.groupby('column_name').mean()  # Mean of each column for each group
df.groupby('column_name').median()  # Median of each column for each group
df.groupby('column_name').min()  # Minimum value of each column for each group
df.groupby('column_name').max()  # Maximum value of each column for each group
df.groupby('column_name').size()  # Count of rows in each group
df.groupby('column_name').agg(function)  # Apply function to each group
df.groupby('column_name').agg([function1, function2])  # Apply function1 and function2 to each group
df.groupby(['column_name1', 'column_name2']).agg({'column3': function})  # Apply function to column3 for each combination of column_name1 and column_name2
```

### Filtering Grouped Data

```python
grouped_df.filter(lambda x: len(x) > 1)  # Filter groups with more than one element
grouped_df.filter(lambda x: x['column_name'].sum() > value)  # Filter groups where the sum of column_name is greater than value
```

### Transforming Grouped Data

```python
df.groupby('column_name').transform(function)  # Apply function to each group and return transformed DataFrame
```

Note: The groupby method is used to group a DataFrame by one or more columns. After grouping, aggregate functions can be applied to each group to compute summary statistics. Filtering and transforming can also be performed on grouped data using the filter and transform methods.