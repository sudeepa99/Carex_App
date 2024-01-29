import mongoose from "mongoose";

const Schema = mongoose.Schema;
const userSchema = new Schema({
    firstName: {
        type: String,
        required: true,
        
    },
    lastName: {
        type: String,
        required: true,

    },
    nicNumber: {
        type: String,
        required: true,
        unique: true,
    },
    contactNumber: {
        type: String,
        required: true,

    },
    email: {
        type: String,
        required: true,
        unique: true,

    },
    street: {
        type: String,
        required: true,
    },
    city: {
        type: String,
        required: true,
    },
    province: {
        type: String,
        required: true,

    },
    password: {
        type: String,
        required: true,
    }
});

export default mongoose.model("User",userSchema);