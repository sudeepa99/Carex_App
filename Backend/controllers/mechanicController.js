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








//get mechanic by search
export const getMechanicBysearch = async (req, res) => {
    //here i means case sensitive
    const userName = new RegExp(req.query.use, "i");
    const from =new RegExp(req.query.use, "i");
    //const distance = parseInt(req.query.distance);
    //const maxGroupSize = parseInt(req.query.maxGroupSize);
    try {
      //get means greater than equal
      const mechanic = await Mechanic.find({
        userName,
        from,
        //maxGroupSize: { $gte: maxGroupSize },
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
