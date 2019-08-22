const mysql = require("mysql");
const inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon_DB"
});

// connect to the mysql server and sql database
connection.connect(function (err) {
    if (err) throw err;
    inventory();
});

function inventory() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;

        console.table(res);
        orderProduct();
    })
}

function orderProduct() {
    inquirer.prompt([{
        type: "input",
        name: "item",
        message: "What is the id of the item what you want to buy?"
    },
    {
        type: "input",
        name: "quantity",
        message: "How many would you like to buy?"
    }
    ]).then(function (answer) {
        connection.query("SELECT stock_quantity FROM products WHERE item_id = ? ", [answer.item], function (err, res) {
            if (err) throw err;
            var isAvailable = res[0].stock_quantity;
            var howMany = answer.quantity

            if (isAvailable < howMany) {
                console.log("Insufficient quantity!");
                connection.end();
            } else {
                var newStock = parseInt(res[0].stock_quantity) - parseInt(answer.quantity);
                var totalPrice = answer.quantity * parseFloat(res[0].price);

                connection.query("UPDATE products SET ? WHERE ?",
                    [
                        {
                            stock_quantity: newStock
                        },
                        {
                            item_id: answer.item
                        }
                    ], function (err, res) {
                        if (err) throw err;
                        console.log("Enjoy your new purchase!");
                        console.log("Total price is $" +totalPrice)
                        // console.table(res);
                        connection.query("SELECT * FROM products;", function (err, res) {
                            if (err) throw err;
                            console.table(res);
                            connection.end();
                        });
                    }
                )
            }
        })
    })

}

