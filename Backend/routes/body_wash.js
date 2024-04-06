import express from "express";
import {
  //createBodyWash,
  //updateBodyWash,
  //deleteBodyWash,
  getSingleBodyWash,
  getAllBodyWash,
  getBody_washBysearch,
  getOnlineBodyWash,
  //getBodyWashCount,
} from "./../controllers/body_washController.js";
//import { verifyAdmin } from "../utils/verifyToken.js";

const router = express.Router();

//create new body_wash
//router.post("/", verifyAdmin, createBodyWash);
//update body_wash
//router.put("/:id", verifyAdmin, updateBodyWash);
// //delete body_wash

//router.delete("/:id", verifyAdmin, deleteBodyWash);

//getSinglebody_wash
router.get("/:id", getSingleBodyWash);

 //getAllbody_wash
router.get("/", getAllBodyWash);

//get body_wash by search
router.get("/search/getBody_washBySearch", getBody_washBysearch);

 //get online body_wash by search
router.get("/search/getOnlineBodyWash", getOnlineBodyWash);
// //get body_wash by search
//router.get("/search/getBodyWashCount", getBodyWashCount);

export default router;