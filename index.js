const inquirer = require('inquirer');

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