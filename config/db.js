const mongoose = require('mongoose');

const connection = mongoose.createConnection('mongodb+srv://amanda:amandaRash@cluster0.56tm1ot.mongodb.net/?retryWrites=true&w=majority').on('open',()=>{
    console.log("Mongodb Connected");
}).on('error',()=>{
    console.log("MongoDb Connection error");
});
module.exports = connection;