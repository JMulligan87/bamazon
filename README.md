# Bamazon

## Overview

Bamazon is an Amazon-like storefront that uses Node and MySQL to store and update data. The app will take in orders from customers and deplete stock from the store's inventory. 

### How to use this app

Install the mysql and inquirer node_modules.

Type `node bamazonCustomer.js` to start the app.
Then enter the id of the item you would like to purchase.
Enter the quantity that you would like to purchase.

![bamazon]("./images/bamazon.png")

The app will then congratulate you on your purchase if there are items in stock and show the total amount owed (the total amount is not currently working)

![bamazon]("./images/bamazon2.png")

otherwise it will say insufficient quantity

![bamazon]("./images/bamazon3.png")