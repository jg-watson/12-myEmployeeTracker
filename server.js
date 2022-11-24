//import dependencies
const mysql = require('mysql2');
const inquirer =require('inquirer');
const cTable = require('console.table');
const { QueryInterface } = require('sequelize');


// Connect to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      user: 'root',
      password: 'password',
      database: 'tracker_db'
    },
    console.log(`Connected to the tracker_db database.`)
  );
  
db.connect(err => {
if (err) throw err;
console.log('connected to tracker_db')
});

function promptQuestions() {
    inquirer.prompt([
{
type: 'list',
name: 'choices',
message: 'Please select',
choices: [
{
  name: "View All Departments",
  value: "VIEW_DEPARTMENTS"
},
{
  name: "View All Roles",
  value: "VIEW_ROLE"
},
{
  name: "View All Employees",
  value: "VIEW_ALL_EMPLOYEES"
}]
}
])
    .then(res => {
let choices = res.choices;
switch(choices) {
  case "VIEW_DEPARTMENTS":
    break;
    case "VIEW_ROLES":
      break;
      case "VIEW_ALL_EMPLOYEES":
        break;
        default:
          quit();
}
})
};

//query database: department

db.query('SELECT * FROM departments', function (err, results) {
  console.log(results);
});


promptQuestions();