const express = require("express");
const mongoose = require("mongoose");
const app = express();
const PORT = process.env.port | 3000;

DB = "mongodb+srv://Somongoadmin:somongoadmin123@cluster0.3guk38y.mongodb.net/?retryWrites=true&w=majority"

mongoose.connect(DB).then(()=>{
    console.log("DB Connection sucessfull");
}).catch((e) =>{
    console.log(e);
})

app.get("/", (req, res) => res.send("Hello World!"));
app.listen(PORT, "0.0.0.0", () =>
  console.log(`docks app listening on port : ${PORT}`)
);
