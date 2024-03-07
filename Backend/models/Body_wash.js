import mongoose from "mongoose";

const body_washSchema = new mongoose.Schema(
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

export default mongoose.model("Body_wash", body_washSchema);