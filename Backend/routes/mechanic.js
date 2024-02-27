import express from "express";
import {
  //createMechanic,
  getMechanicBysearch,
 
} from "./../controllers/mechanicController.js";
//import { verifyAdmin } from "../utils/verifyToken.js";

const router = express.Router();

//create new mechanic 
//router.post("/", verifyAdmin, createMechanic);
//update 
//router.put("/:id", verifyAdmin, updateMechanic);
// //delete mechanic  

//router.delete("/:id", verifyAdmin, deleteMechanic);

// //getSingle mechanic 
//router.get("/:id", getSingleMechanic);

// //getAll mechanic 
//router.get("/", getAllMechanic);

//get mechanic  by search
router.get("/search/getMechanicBySearch", getMechanicBysearch);

// //get mechanic  by search
//router.get("/search/getFeaturedMechanic", getFeaturedMechanic);
// //get mechanic  by search
//router.get("/search/getMechanicCount", getMechanicCount);

export default router;