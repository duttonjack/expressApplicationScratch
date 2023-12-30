import express from "express";
import pg from 'pg';
import multer from 'multer';



const { Pool } = pg

const app = express()
const expressPort = 8000;

const pool = new Pool ({
    user: 'duttonjack',
    host: 'localhost',
    database: 'library',
    port: 5432
})

const upload = multer();
app.use(upload.none());


app.use(express.json())
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'))

app.get('/api/books', (req, res) => {
    pool.query('SELECT * FROM books;')
        .then((result) => res.send(result.rows))
        .catch((error) => {
            res.status(500).send("Error")
        })
})

app.post('/api/patrons', (req, res) => {
    console.log("req", req.body)
    res.status(200).send(req.body)
})


app.listen(expressPort, () => {
  console.log(`Server Listening On Port ${expressPort}`)
});
