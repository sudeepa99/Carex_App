import Body_wash from "../models/Body_wash.js";

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
      userName,
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
