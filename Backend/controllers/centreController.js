import Centre from "../models/Centre.js";

//get centre by search
export const getCentreBysearch = async (req, res) => {
    //here i means case sensitive
    const userName = new RegExp(req.query.use, "i");
    const from =new RegExp(req.query.use, "i");
    //const distance = parseInt(req.query.distance);
    //const maxGroupSize = parseInt(req.query.maxGroupSize);
    try {
      //get means greater than equal
      const centre = await Centre.find({
        userName,
        from,
        //maxGroupSize: { $gte: maxGroupSize },
      });
      res.status(200).json({
        success: true,
        count: centres.length,
        message: "Successfully",
        data: centres,
      });
    } catch (err) {
      res.status(404).json({ success: false, message: "Not found" });
    }
  };
