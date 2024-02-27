import mongoose from "mongoose";

const mechanicSchema = new mongoose.Schema(
  {

    photo: {
      type: String,
    },
    
    userName: {
      type: String,
      required: true,
    },

    from: {
      type: String,
      required: true,
    },

    appoinment: {
      type: String,
      required: true,
    },

    
   phone:{
    type:Number,
    required:true,
   },

   /*maxGroupSize: {
    type: Number,
    required: true,
  },*/

   
  

  


   
   },
  
  { timestamps: true }
);

export default mongoose.model("Mechanic", mechanicSchema);