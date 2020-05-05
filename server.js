const mysql = require("mysql");
const inquirer = require("inquirer");
const express = require("express");
const cTable = require("console.table");

const app = express();
const PORT = 3301;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "employeesDB",
});

connection.connect(function (err) {
    if (err) {
        console.error("error connecting: " + err.stack);
        return;
    }

    console.log("connected as id " + connection.threadId);
});

initTracker();

function initTracker() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "Welcome to the employee tracker management system. What would you like to do?",
            choices: [
                {
                    name: "ADD a department, role, or employee",
                    value: "add"
                },
                {
                    name: "VIEW all departments, roles, or employees",
                    value: "view"
                },
                {
                    name: "UPDATE employee roles",
                    value: "update"
                },
                {
                    name: "DELETE a department, role, or employee",
                    value: "delete"
                },
                new inquirer.Separator(),
                {
                    name: "VIEW total utilized budget of a department",
                    value: "viewSalaries"
                },
            ]
        })
        .then(function (answer) {
            console.log(answer);
            switch (answer.action) {
                case "view":
                    viewAll();
                    break;

                case "Find all artists who appear more than once":
                    multiSearch();
                    break;

                case "Find data within a specific range":
                    rangeSearch();
                    break;

                case "Search for a specific song":
                    songSearch();
                    break;

                case "exit":
                    connection.end();
                    break;
            }
        });
}

function viewAll() {
    inquirer
        .prompt({
            name: "table",
            type: "list",
            message: "Would you like to view all departments, roles, or employees?",
            choices: [
                {
                    name: 'Departments',
                    value: 'department'
                },
                {
                    name: 'Roles',
                    value: 'roles'
                },
                {
                    name: 'Employees',
                    value: 'employee'
                }
            ]
        })
        .then(function (answer) {
            console.log(`Selecting all from ${answer.table}...`);
            var query = "SELECT * FROM " + answer.table;
            connection.query(query, (err, res) => {
                if (err) throw err;
                console.log(`\n\n ** Full ${answer.table} list ** \n`)
                console.table(res);
            })

            initTracker();

        });
}

function multiSearch() {
    var query =
        "SELECT artist FROM top5000 GROUP BY artist HAVING count(*) > 1";
    connection.query(query, function (err, res) {
        if (err) throw err;
        for (var i = 0; i < res.length; i++) {
            console.log(res[i].artist);
        }
        runSearch();
    });
}

function rangeSearch() {
    inquirer
        .prompt([
            {
                name: "start",
                type: "input",
                message: "Enter starting position: ",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                },
            },
            {
                name: "end",
                type: "input",
                message: "Enter ending position: ",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                },
            },
        ])
        .then(function (answer) {
            var query =
                "SELECT position,song,artist,year FROM top5000 WHERE position BETWEEN ? AND ?";
            connection.query(query, [answer.start, answer.end], function (
                err,
                res
            ) {
                if (err) throw err;
                for (var i = 0; i < res.length; i++) {
                    console.log(
                        "Position: " +
                            res[i].position +
                            " || Song: " +
                            res[i].song +
                            " || Artist: " +
                            res[i].artist +
                            " || Year: " +
                            res[i].year
                    );
                }
                runSearch();
            });
        });
}

function songSearch() {
    inquirer
        .prompt({
            name: "song",
            type: "input",
            message: "What song would you like to look for?",
        })
        .then(function (answer) {
            console.log(answer.song);
            connection.query(
                "SELECT * FROM top5000 WHERE ?",
                { song: answer.song },
                function (err, res) {
                    if (err) throw err;
                    console.log(
                        "Position: " +
                            res[0].position +
                            " || Song: " +
                            res[0].song +
                            " || Artist: " +
                            res[0].artist +
                            " || Year: " +
                            res[0].year
                    );
                    runSearch();
                }
            );
        });
}

// Start our server so that it can begin listening to client requests.
app.listen(PORT, function () {
    // Log (server-side) when our server has started
    console.log("Server listening on: http://localhost:" + PORT);
});
