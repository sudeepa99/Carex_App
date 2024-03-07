import mongoose from "mongoose";

const tyre_martSchema = new mongoose.Schema(
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
    

    
  },
  { timestamps: true }
);

export default mongoose.model("Tyre_mart", tyre_martSchema);