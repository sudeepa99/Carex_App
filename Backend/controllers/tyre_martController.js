import Tyre_mart from "../models/Tyre_mart.js";

 //getSingle tyre mart
 export const getSingleTyreMart = async (req, res) => {
  const id = req.params.id;
  try {
    const tyre_mart = await Tyre_mart.findById(id);
    res.status(200).json({
      success: true,
      message: "Successfully",
      data: tyre_mart,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};



  //getAlltyreMart
  export const getAllTyreMart = async (req, res) => {
    //for pagination
    const page = parseInt(req.query.page);
    console.log(page);
    try {
      const tyre_marts = await Tyre_mart.find({})
        //.populate("reviews")
        .skip(page * 8)
        .limit(8);
      res.status(200).json({
        success: true,
        count: tyre_marts.length,
        message: "Successfully",
        data:tyre_marts,
      });
    } catch (err) {
      res.status(404).json({ success: false, message: "Not found" });
    }
  };

   //get online tyre mart
export const getOnlineTyreMart = async (req, res) => {
  try {
    const tyre_marts = await Tyre_mart.find({ online: true })
      //.populate("reviews")
      .limit(8);
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
        fullName,
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
