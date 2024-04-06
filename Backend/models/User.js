
import mongoose from "mongoose";

const userSchema = new mongoose.Schema(
  {
    firstname: {
      type: String,
      required: true,
      unique: true,
    },
    lastname: {
      type: String,
      required: true,
      unique: true,
    },
    nic: {
      type: String,
      required: true,
      unique: true,
    },
    contactNumber: {
      type: String,
      required: true,
      unique: true,
    },
    
    email: {
      type: String,
      lowercase:true,
      required: true,
      unique: true,
    },
    street: {
      type: String,
      required: true,
      //unique: true,
    },
    city: {
      type: String,
      required: true,
      //unique: true,
    },
    province: {
      type: String,
      required: true,
      //unique: true,
    },
    password: {
      type: String,
      required: true,
    },

   
    role: {
    type: String,
    default: "user",
    },
  },
  { timestamps: true }
);

export default mongoose.model("User", userSchema);