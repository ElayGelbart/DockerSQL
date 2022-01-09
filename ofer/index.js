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
  const getSubjectQuery = `SELECT * FROM Subjects WHERE subject_name='${subjectStringName}'`
  con.query(getSubjectQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.get("/getClass/:className", (req, res) => {
  const className = req.params.className
  const getClassQuery = `SELECT * FROM Classes WHERE class_name='${className}'`
  con.query(getClassQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.post("/new/teacher", (req, res) => {
  const { subject_name, class_name, teacher_age, teacher_fullname } = req.body
  const postTeacherQuery = `INSERT INTO Teachers(subject_name,class_name,teacher_age,teacher_fullname) VALUES(${subject_name},${class_name},${teacher_age},${teacher_fullname})`
  con.query(postTeacherQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.post("/new/pupil", (req, res) => {
  const { class_Name, subjects, student_name, student_age } = req.body
  const postStudentQuery = `INSERT INTO Students(class_Name, subjects, student_name, student_age) VALUES(${class_Name},${subjects},${student_name},${student_age})`
  con.query(postStudentQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.put("/update/pupil/:pupilID", (req, res) => {
  const { class_Name, subjects, student_name, student_age } = req.body
  const updateStudentQuery = `UPDATE Students set class_Name='${class_Name}',subjects='${subjects}', student_name='${student_name}', student_age = '${student_age}'
   WHERE student_id=${req.params.pupilID}`
  con.query(updateStudentQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.put("/update/class/:classID", (req, res) => {
  const { class_name } = req.body
  const updateClassQuery = `UPDATE Classes set class_name='${class_name}'
   WHERE l=${req.params.classID}`
  con.query(updateClassQuery, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.delete('/remove/pupil/:pupilID', (req, res) => {
  const deleteStudentQ = `DELETE FROM Students Where student_id=${req.params.pupilID}`
  con.query(deleteStudentQ, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.delete('/remove/teacher/:teacher', (req, res) => {
  const deleteTeacherQ = `DELETE FROM Teachers Where teacher_id=${req.params.teacher}`
  con.query(deleteTeacherQ, (err, data) => {
    if (err) res.send('error happened')
    res.send(data)
  })
})

app.listen(port, () => {
  console.log(`running on ${port}`);
});