import Centre from "../models/Centre.js";



 //getSingleCentre
 export const getSingleCentre = async (req, res) => {
  const id = req.params.id;
  try {
    const centre = await Centre.findById(id);
    res.status(200).json({
      success: true,
      message: "Successfully",
      data: centre,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};



  //getAllCentre
  export const getAllCentre = async (req, res) => {
    //for pagination
    const page = parseInt(req.query.page);
    console.log(page);
    try {
      const centres = await Centre.find({})
        //.populate("reviews")
        .skip(page * 8)
        .limit(8);
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
        fullName,
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

  //get online centre
export const getOnlineCentre = async (req, res) => {
  try {
    const centres = await Centre.find({ online: true })
     
      .limit(8);
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
