import express from "express";
import dotenv from "dotenv";
import mongoose from "mongoose";
import cors from "cors";
import cookieParser from "cookie-parser";
import userRoute from "./routes/user.js";
import authRoute from "./routes/auth.js";



dotenv.config();
const app = express();
const port = process.env.PORT || 8000;
const corsOptions = {
  origin: true,
  credentials: true,
};

// database connection
mongoose.set("strictQuery", false);
const connect = async () => {
  try {
    await mongoose.connect(process.env.MONGO_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log("MongoDB database connected");
  } catch (err) {
    console.log("MongoDB database not connected");
  }
};

//for testing
app.get("/",(req,res)=>{
 res.send("api is working. This this vehicle breakdown help app. I work with backend of this project. Nowadays codinggg....amanda");
});


app.use(express.json());
app.use(cors(corsOptions));

app.use(cookieParser());

//app.use("/api/auth", authRoute);
//app.use("/api/users", userRoute);

app.use("/api/v1/auth", authRoute);

app.use("/api/v1/users", userRoute);




app.listen(port, () => {
    connect();
    console.log("Server listing on port", port);
  });