import express from "express";
import {
  //createMechanic,
  getSingleMechanic,
  getAllMechanics,
  getMechanicBysearch,
  getOnlineMechanic
 
} from "./../controllers/mechanicController.js";
//import { verifyAdmin } from "../utils/verifyToken.js";

const router = express.Router();

//create new mechanic 
//router.post("/", verifyAdmin, createMechanic);
//update 
//router.put("/:id", verifyAdmin, updateMechanic);
// //delete mechanic  

//router.delete("/:id", verifyAdmin, deleteMechanic);

//getSingle mechanic 
router.get("/:id", getSingleMechanic);

//getAll mechanic 
router.get("/", getAllMechanics);

//get mechanic  by search
router.get("/search/getMechanicBySearch", getMechanicBysearch);

// //get online mechanic  by search
router.get("/search/getOnlineMechanic", getOnlineMechanic);
// //get mechanic  by search
//router.get("/search/getMechanicCount", getMechanicCount);

export default router;