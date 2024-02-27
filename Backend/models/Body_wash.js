import mongoose from "mongoose";

const body_washSchema = new mongoose.Schema(
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

  },
  { timestamps: true }
);

export default mongoose.model("Body_wash", body_washSchema);