import Tyre_mart from "../models/Tyre_mart.js";

//get tyre_mart by search
export const getTyre_martBysearch = async (req, res) => {
    //here i means case sensitive
    const userName = new RegExp(req.query.use, "i");
    const from =new RegExp(req.query.use, "i");
    //const distance = parseInt(req.query.distance);
    //const maxGroupSize = parseInt(req.query.maxGroupSize);
    try {
      //get means greater than equal
      const tyre_mart = await Tyre_mart.find({
        userName,
        from,
        //maxGroupSize: { $gte: maxGroupSize },
      });
      res.status(200).json({
        success: true,
        count: tyre_marts.length,
        message: "Successfully",
        data: tyre_marts,
      });
    } catch (err) {
      res.status(404).json({ success: false, message: "Not found" });
    }
  };
