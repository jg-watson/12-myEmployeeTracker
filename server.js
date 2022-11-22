//import dependencies
const mysql = require('mysql2');
const inquirer =require('inquirer');
const cTable = require('console.table');


const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

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
  
connection.connect(err => {
if (err) throw err;
console.log('connected to database')
});