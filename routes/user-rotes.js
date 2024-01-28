import express from "express";
import getAllUsers from "../controllers/user-controller.js";

const userRouter = express.Router();
userRouter.get("/",getAllUsers);

export default userRouter;