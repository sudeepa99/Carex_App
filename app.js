import express from "express";

import mongoose from "mongoose";
import userRouter from "./routes/user-rotes.js";
const app = express();


// middlewares
app.use(express.json());
app.use("/user",userRouter);


mongoose
.connect(`mongodb+srv://hashadananjaya7:sabara123@carex.sibjgis.mongodb.net/?retryWrites=true&w=majority`
    )
        .then(()=>app.listen(5001,()=>console.log("connect to DB"))

    )
        .catch((e)=> console.log(e));


