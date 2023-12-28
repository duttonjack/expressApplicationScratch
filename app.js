import express from "express"
import pg from 'pg';

const { Pool } = pg

const app = express()
const expressPort = 8001;

const pool = new Pool ({
    user: 'duttonjack',
    host: 'localhost',
    database: 'library',
    port: 5432
})

app.use(express.json())
app.use(express.static('public'))

app.get('/api/books', (req, res) => {
    pool.query('SELECT * FROM books;')
        .then((result) => res.send(result.rows))
        .catch((error) => {
            res.status(500).send("Error")
        })
})


app.listen(expressPort, () => {
  console.log(`Server Listening On Port ${expressPort}`)
});
