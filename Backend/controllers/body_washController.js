import Body_wash from "../models/Body_wash.js";

//getSingle body wash
export const getSingleBodyWash = async (req, res) => {
  const id = req.params.id;
  try {
    const body_wash = await Body_wash.findById(id);
    res.status(200).json({
      success: true,
      message: "Successfully",
      data: body_wash,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};




 //getAllbodywashes
 export const getAllBodyWash = async (req, res) => {
  //for pagination
  const page = parseInt(req.query.page);
  console.log(page);
  try {
    const body_washes = await Body_wash.find({})
      //.populate("reviews")
      .skip(page * 8)
      .limit(8);
    res.status(200).json({
      success: true,
      count: body_washes.length,
      message: "Successfully",
      data: body_washes,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};






//get body_wash by search
export const getBody_washBysearch = async (req, res) => {
  //here i means case sensitive
  const userName = new RegExp(req.query.use, "i");
  const from =new RegExp(req.query.use, "i");
  //const distance = parseInt(req.query.distance);
  //const maxGroupSize = parseInt(req.query.maxGroupSize);
  try {
    //get means greater than equal
    const body_wash = await Body_wash.find({
      fullName,
      from,
      //maxGroupSize: { $gte: maxGroupSize },
    });
    res.status(200).json({
      success: true,
      count: body_washes.length,
      message: "Successfully",
      data: body_washes,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};

 //get online body wash
 export const getOnlineBodyWash = async (req, res) => {
  try {
    const body_washes = await Body_wash.find({ online: true })
      
      .limit(8);
    res.status(200).json({
      success: true,
      count: body_washes.length,
      message: "Successfully",
      data: body_washes,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};

