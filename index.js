const inquirer = require('inquirer');
const express = require('express');
const mysql = require('mysql2mysql');

const PORT = process.env.PORT || 3001;
const app = express();

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'company_db'
    },
);

const promptUser = () => {
    return inquirer.prompt([
        {
        type: 'list',
        name: 'company',
        message: 'What would you like to view?',
        choices: ['Departments', 'Employees', 'Role']
        }
    ])
};

const init = () => {
    promptUser().then(function (answer) {
        console.log(answer)
    })
}
init();