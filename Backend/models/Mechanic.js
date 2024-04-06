import mongoose from "mongoose";

const mechanicSchema = new mongoose.Schema(
  {

    photo: {
      type: String,
    },
    
    fullName: {
      type: String,
      required: true,
    },

    from: {
      type: String,
      required: true,
    },

    appoinment: {
      type: String,
      //required: true,
    },

    
   phone:{
    type:Number,
    required:true,
   },

   online: {
    type: Boolean,
    default: false,
  },

   /*maxGroupSize: {
    type: Number,
    required: true,
  },*/

   
  

  


   
   },
  
  { timestamps: true }
);

export default mongoose.model("Mechanic", mechanicSchema);