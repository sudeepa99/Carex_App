import mongoose from "mongoose";

const body_washSchema = new mongoose.Schema(
  {
    title: {
        type: String,
        required: true,
        unique: true,
      },
  
      userEmail: {
          type: String,
        },
        
        fullName: {
          type: String,
          required: true,
        },
      city: {
        type: String,
        required: true,
      },
      address: {
        type: String,
        required: true,
      },
      distance: {
        type: Number,
        required: true,
      },
      photo: {
        type: String,
        required: true,
      },
      desc: {
        type: String,
        required: true,
      },
      price: {
        type: Number,
        required: true,
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

export default mongoose.model("Body_wash", body_washSchema);