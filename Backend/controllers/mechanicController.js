import Mechanic from "../models/Mechanic.js";

//create new mechanic
/*export const createMechanic = async (req, res) => {
    const newMechanic = new Mechanic(req.body);
    try {
      const savedMechanic = await newMechanic.save();
      res.status(200).json({
        success: true,
        message: "Successfully created",
        data: savedMechanic,
      });
    } catch (err) {
      res
        .status(500)
        .json({ success: false, message: "Failed to create. Try again" });
    }
  };*/

  //getSingleMechanic
export const getSingleMechanic = async (req, res) => {
  const id = req.params.id;
  try {
    const mechanic = await Mechanic.findById(id);
    res.status(200).json({
      success: true,
      message: "Successfully",
      data: mechanic,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};




 
 
 
  //getAllMechanics
export const getAllMechanics = async (req, res) => {
  //for pagination
  const page = parseInt(req.query.page);
  console.log(page);
  try {
    const mechanics = await Mechanic.find({})
      //.populate("reviews")
      .skip(page * 8)
      .limit(8);
    res.status(200).json({
      success: true,
      count: mechanics.length,
      message: "Successfully",
      data: mechanics,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};








//get mechanic by search
export const getMechanicBysearch = async (req, res) => {
    //here i means case sensitive
    const fullName = new RegExp(req.query.use, "i");
    const from =new RegExp(req.query.use, "i");
    //const distance = parseInt(req.query.distance);
    //const maxGroupSize = parseInt(req.query.maxGroupSize);
    try {
      //get means greater than equal
      const mechanic = await Mechanic.find({
        fullName,
        from,
       
      });
      res.status(200).json({
        success: true,
        count: mechanics.length,
        message: "Successfully",
        data: mechanics,
      });
    } catch (err) {
      res.status(404).json({ success: false, message: "Not found" });
    }
  };

  //get online mechanic
export const getOnlineMechanic = async (req, res) => {
  try {
    const mechanics = await Mechanic.find({ online: true })
     
      .limit(8);
      res.status(200).json({
      success: true,
      count: mechanics.length,
      message: "Successfully",
      data: mechanics,
    });
  } catch (err) {
    res.status(404).json({ success: false, message: "Not found" });
  }
};