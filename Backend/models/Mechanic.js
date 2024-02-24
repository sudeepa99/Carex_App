import mongoose from "mongoose";

const mechanicSchema = new mongoose.Schema(
  {
    
    userEmail: {
      type: String,
    },
    
    fullName: {
      type: String,
      required: true,
    },

    desc: {
        type: String,
        required: true,
      },
   
   phone:{
    type:Number,
    required:true,
   },

   appoinment: {
    type: String,
    required: true,
  },

  vehicle: {
    type: String,
    required: true,
  },
   
   },
  
  { timestamps: true }
);

export default mongoose.model("Mechanic", mechanicSchema);