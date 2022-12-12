// to use
// run npm start


const express = require("express")
const cors = require("cors")
const app = express()

// comment out const db when db implementation is ready
// const db = require("../client/src/model/db_model.js")

let corsOptions = {
    origin: "http://localhost:3988"
}

app.use(cors(corsOptions))

// parse requests of content-type

app.use(express.json())

// parse requests of content-type - application/x-www-fom-urlencoded
app.use(express.urlencoded( {extended: true }))

// simple route
app.get("/api", (req, res) => {
    res.json({ message: "Quiz Application." })
})

// set port, listen for requests

const PORT = 3987

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`)
})
