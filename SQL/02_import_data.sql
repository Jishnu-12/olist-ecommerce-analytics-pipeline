\copy customers FROM 'C:/Users/jk977/OneDrive/Desktop/Olist analytics project/Data/cleaned/customers_clean.csv' WITH (FORMAT csv, HEADER true);
\copy sellers FROM 'C:/Users/jk977/OneDrive/Desktop/Olist analytics project/Data/cleaned/sellers_clean.csv' WITH (FORMAT csv, HEADER true);
\copy products FROM 'C:/Users/jk977/OneDrive/Desktop/Olist analytics project/Data/cleaned/products_clean.csv' WITH (FORMAT csv, HEADER true);
\copy orders FROM 'C:/Users/jk977/OneDrive/Desktop/Olist analytics project/Data/cleaned/orders_clean.csv' WITH (FORMAT csv, HEADER true);
\copy order_items FROM 'C:/Users/jk977/OneDrive/Desktop/Olist analytics project/Data/cleaned/order_items_clean.csv' WITH (FORMAT csv, HEADER true);
\copy payments FROM 'C:/Users/jk977/OneDrive/Desktop/Olist analytics project/Data/cleaned/payments_clean.csv' WITH (FORMAT csv, HEADER true);
\copy reviews FROM 'C:/Users/jk977/OneDrive/Desktop/Olist analytics project/Data/cleaned/reviews_clean.csv' WITH (FORMAT csv, HEADER true);