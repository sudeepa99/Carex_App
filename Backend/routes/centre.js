import express from "express";
import {
  //createCentre,
  //updateCentre,
  //deleteCentre,
  //getSingleCentre,
  //getAllCentre,
  getCentreBysearch,
  //getFeaturedCentre,
  //getCentreCount,
} from "./../controllers/centreController.js";
//import { verifyAdmin } from "../utils/verifyToken.js";

const router = express.Router();

//create new centre 
//router.post("/", verifyAdmin, createCentre);
//update 
//router.put("/:id", verifyAdmin, updateCentre);
// //delete centre  

//router.delete("/:id", verifyAdmin, deleteCentre);

// //getSingle centre 
//router.get("/:id", getSingleCentre);

// //getAll centre 
//router.get("/", getAllCentre);

//get centre  by search
router.get("/search/getCentreBySearch", getCentreBysearch);

// //get centre  by search
//router.get("/search/getFeaturedCentre", getFeaturedCentre);
// //get centre  by search
//router.get("/search/getCentreCount", getCentreCount);

export default router;