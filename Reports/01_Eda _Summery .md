## Dataset overview

sucessfully explored 9 raw csv files including
- customers
- geolocation
- order_items
- payments
- reviews
- orders
- products
- sellers
- category_name_translation

### Key findings
- geolocation dataset contains aproximately 26% duplipcate rows indicating high redundancy in location data.
#### Missing values are present in three datasets
- reviews
- orders
- products

- The review dataset contains a significantly high level of missing values especially in text related columns
- Datatype missmathches where identified in multiple datasets. particulerly in timestamp columns which are currently stored as object types instead of proper date time format. the datasets are order_items, reviews, and orders need to fix that

The dataset represents a Brazilian e-commerce system where Product categories and customer reviews are in Portuguese.
A category translation dataset is provided, containing 71 category names with their English translations.

The noted issues will be handled during the cleaning phase

### Next Steps
- Perform data cleaning
- Handle missing values
- Remove duplicates
- Fix data types
- Merge datasets to create a structured dataset for SQL-based analysis