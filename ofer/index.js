const express = require("express");
const mysql = require("mysql2");

// Should be kept as environment variable
const mysqlConfig = {
  host: process.env.MYSQL_DATABASE || "mysql_server",
  user: process.env.MYSQL_USER || "student",
  password: process.env.MYSQL_PASSWORD || "secret",
  database: process.env.MYSQL_ROOT_PASSWORD || "test_db",
};

const port = process.env.PORT || 3000;

// Connecting to mysql container
const con = mysql.createConnection(mysqlConfig);
con.connect(function (err) {
  if (err) throw err;
  console.log("connected");
});

const app = express();

app.get("/", function (req, res) {
  res.send("Testing my server");
});

//  Creating first table "numbers"
app.get("/create-table", function (req, res) {
  const sql = `
    CREATE TABLE IF NOT EXISTS numbers (
      id INT AUTO_INCREMENT PRIMARY KEY,
      number INT NOT NULL,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ) ENGINE=INNODB;
  `;
  con.query(sql, function (err, result) {
    if (err) throw err;
    res.send("numbers table created");
  });
});

app.get("/getTeacher/:teacherID", (req, res) => {
  const teacherID = Number(req.params.teacherID)
  const getTeacherQuery = `SELECT * FROM Teachers WHERE teacher_id=${teacherID}`
  con.query(getTeacherQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.get("/getStudent/:studentID", (req, res) => {
  const studentID = Number(req.params.studentID)
  const getStudentQuery = `SELECT * FROM Students WHERE student_id=${studentID}`
  con.query(getStudentQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.get("/getSubject/:subjectsName", (req, res) => {
  const subjectStringName = req.params.subjectsName
  const getSubjectQuery = `SELECT * FROM Subjects WHERE subject_name=${subjectStringName}`
  con.query(getSubjectQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.get("/getClass/:className", (req, res) => {
  const className = req.params.className
  const getClassQuery = `SELECT * FROM Class WHERE class_name=${className}`
  con.query(getClassQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.listen(port, () => {
  console.log(`running on ${port}`);
});