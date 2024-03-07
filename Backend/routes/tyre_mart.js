import express from "express";
import {
  //createTyreMart,
  //updateTyreMart,
  //deleteTyreMart,
  getSingleTyreMart,
  getAllTyreMart,
  getTyre_martBysearch,
  getOnlineTyreMart,
  //getTyreMartCount,
} from "./../controllers/tyre_martController.js";
//import { verifyAdmin } from "../utils/verifyToken.js";

const router = express.Router();

//create new tyre mart  
//router.post("/", verifyAdmin, createTyreMart);
//update tyre mart  
//router.put("/:id", verifyAdmin, updateTyreMart);
// //delete tyre mart    

//router.delete("/:id", verifyAdmin, deleteTyreMart);

//getSingle tyre mart   
router.get("/:id", getSingleTyreMart);

// //getAll tyre mart  
router.get("/", getAllTyreMart);

//get tyre mart   by search
router.get("/search/getTyre_martBySearch", getTyre_martBysearch);

//get online tyre mart   by search
router.get("/search/getOnlineTyreMart", getOnlineTyreMart);
// //get tyre mart   by search
//router.get("/search/getTyreMartCount", getTyreMartCount);

export default router;