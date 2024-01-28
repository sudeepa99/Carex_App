const app = require('./app');
const db = require('./config/db');
const UserModel = require('./model/user.model');
const port = 5000;
app.get('/',(req,res)=>{
    res.send("Carex App will implement these days.")
});

app.listen(port,()=>{
    console.log('Server Listening on Port http://localhost:5000');
});