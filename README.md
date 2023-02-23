# DatabaseTermProject2023
 Willaim Friend and Latrel Barnes Skeleton Database and example app
Bike Stores

# Basic Idea: you are the proud owner of multiple bike stores, you have staff that work at the bike stores, one staff member is a manager at each store (you can assume this person is always the manager). You sell lots of categories and brands of bikes. You keep track of your customer information, when a customer places an order they can buy lots of items on one order. You do allow your staff to provide a discount for each order when a customer places an order, you cannot also not have any discount on an order. You also need to keep track of your stock/inventory and if you sell an item you need to reduce your stock/inventory of that item.

# Assumptions: To make life easy the list price of the product is always the same, staff have only one cell phone as a contact and 1 email address, no 2 customers live at the same address, Store information for each store and customer is unique including address, our example is so small we do not need to set up a separate city, state, zip table

# Store:

## Each store has a store name, contact information such as phone and email, and an address including street, city, state, and zip code.

# Staff/Manager

### Staff the essential information of staffs including first name, last name. It also contains the communication information such as email and phone.

### A staff person can work at more than 1 store. A store can have one or more staff members working.

### When a staff member logs in, they need to pick the store they are working at.

# Bike Categories

#### such as: children’s bicycles, senior bicycles, mountain bikes, and electric bikes.

# Bike Brand

### brand’s information of bikes, for example, Electra, Haro, and Heller.

# Bike Name

### Name of the bike, for example: Pegasus, Bumblebee, Raven, Zeus

# Products:

## product’s information such as name, brand, category, model year, and list price.

# Customers:

### customer’s information including first name, last name, credit card (can assume only one) it will have to be encrypted (card # and pin), phone, email, street, city, state and zip code. You can assume that all customers provide a credit card

# Orders

### sales order’s information including customer, order date

### It also stores the information on where the sales transaction was created (store) and who created it (staff).

### Each order can contain more than 1 item that was purchased

# Bike Stores

# Basic Idea: you are the proud owner of multiple bike stores, you have staff that work at the bike stores, one staff member is a manager at each store (you can assume this person is always the manager). You sell lots of categories and brands of bikes. You keep track of your customer information, when a customer places an order they can buy lots of items on one order. You do allow your staff to provide a discount for each order when a customer places an order, you cannot also not have any discount on an order. You also need to keep track of your stock/inventory and if you sell an item you need to reduce your stock/inventory of that item.

# Assumptions: To make life easy the list price of the product is always the same, staff have only one cell phone as a contact and 1 email address, no 2 customers live at the same address, Store information for each store and customer is unique including address, our example is so small we do not need to set up a separate city, state, zip table

# Store:

### Each store has a store name, contact information such as phone and email, and an address including street, city, state, and zip code.

# Staff/Manager

### Staff the essential information of staffs including first name, last name. It also contains the communication information such as email and phone.

###A staff person can work at more than 1 store. A store can have one or more staff members working.

### When a staff member logs in, they need to pick the store they are working at.

# Bike Categories

### such as: children’s bicycles, senior bicycles, mountain bikes, and electric bikes.

# Bike Brand

### brand’s information of bikes, for example, Electra, Haro, and Heller.



# Bike Name

### Name of the bike, for example: Pegasus, Bumblebee, Raven, Zeus

# Products:

### product’s information such as name, brand, category, model year, and list price.

# Customers:

### customer’s information including first name, last name, credit card (can assume only one) it will have to be encrypted (card # and pin), phone, email, street, city, state and zip code. You can assume that all customers provide a credit card

# Orders

### sales order’s information including customer, order date

### It also stores the information on where the sales transaction was created (store) and who created it (staff).

### Each order can contain more than 1 item that was purchased

###An order can have a discount (discount applies to entire order)

### Item Quantities (you can only place an item(s) in the order that are in stock at either your location or another store

### You also you need to keep track of where the item(s) are coming from (which store(s)) and remember to subtract out the remaining qty at each of the stores

# Stock

### stores the inventory information i.e., the quantity of a particular product in a specific store.

### An order can have a discount (discount applies to entire order)

## Item Quantities (you can only place an item(s) in the order that are in stock at either your location or another store

## You also you need to keep track of where the item(s) are coming from (which store(s)) and remember to subtract out the remaining qty at each of the stores

# Stock

### stores the inventory information i.e., the quantity of a particular product in a specific store.

