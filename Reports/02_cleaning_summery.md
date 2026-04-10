## Data cleaning summery

### overview
8 Datasets were cleaned in this phase. A category translation dataset was also used to translate product category name from portuguese to english.
The goal was to prepare clean and accurate data for analysis. All cleaned datasets were saved in **Data/cleaned**

### Customers
No missing values and duplicate rows were detected. Customer_zipcode_prefix column datatype was in integer zipcodes must be treated as strings 
they only act like identifiers. Customer city names were not standardized fixed both of them. otherwise the dataset was clean

### geolocation
Duplicated rows were detected and removed properly. geolocation_zipcode_prefix column datatype was in integer and changed to strings. geolocation_city column
names were not standardized so fixed that

### order_items
No missing values and duplicated rows were detected. shipping_limit_date column datatype was in object changed to datetime.freight_value and price columns
renamed to freight_cost and product_price for better readability

### payments
No missing values and duplicated rows were detected checked for any unknown payment type founded not_defined in that column replace it with unknown for better readability. payment_value and payment_sequential columns renamed to payment_amount and payment_order for better readability

### reviews
review_comment_title and review_comment_message columns were dropped because they contain huge amount of missing values 88.34% in review_comment_title and 58.7%
in review_comment_message.
review_score column was renamed to customer_rating for better readability. review_creation_date and review_answer_timestamp converted from object to datetime.
no duplicates found

### orders
Every date columns datatype was in object converted it into datetime. founded missing values in 3 columns investigated the reason and found that missing dates are connected to order_status since logically filling or removing them would be incorrect so left the missing values as they are. Also found 8 rows where the order status was marked as delivered but the customer delivery date was missing, so those 8 rows were carefully removed as they were inconsistent.

### products
Category names were originally in Portuguese and a translation dataset was provided. A small number of missing values were identified. since the product category acts as a lookup field imputing specific category names could effect the analysis so missing values were filled with unknown. Product attribute columns were not required for the analysis and were removed. Two category values were not present in the translation dataset, so they were manually transated and the translation table was used to convert all category names into English.

### sellers
No missing values and duplicate rows were detected. seller_city names was standardized and seller_zip_code_prefix was in integer converted it in to object. otherwise the dataset was cleaned

### key cleaning decisions
- Outliers were not handled as they represent real world business scenarios like premium products and high value transactions
- NULL values in date columns were left as NaT because they are logically correct not data errors
- Unnecessary columns were dropped to stay focused on project goals
 