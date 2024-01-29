import { request } from "express";
import User from "../models/User.js"
import bcrypt from "bcryptjs";

export const getAllUsers = async(req, res, next) => {
    let users;
    try{
        users = await User.find();
    } catch(err){
        return console.log(err);

    }
    if(!users) {
        return res.status(500).json({message: "Unexpected Error Occured"});
    }

    return res.status(200).json({users});
}

export const signup = async(req, res, next) => {
    const {firstName, lastName, nicNumber, contactNumber, email, street, city, province, password} = req.body;
    if(!firstName && firstName.trim()==="" && !lastName && lastName.trim()==="" && !nicNumber && nicNumber.trim()==="" && !contactNumber && contactNumber.trim()=== "" && !email && email.trim()==="" && !street && street.trim()==="" && !city && city.trim()==="" && !province && province.trim()==="" && !password && password.trim===""){
        return res.status(422).jason({message: "Invalid Input"});
    }
    const hashedPassword = bcrypt.hashSync(password)
    let user;

    try{
        user = new User({ firstName,lastName,nicNumber,contactNumber,email,street,city,province, password: hashedPassword});
        user = await user.save();
    }
    catch(err){
        return console.log(err);

    }
    if(!user){
        return res.status(500).json({message: "Unexpected Error Occured"});
    }
    return res.status(201).json({message: { user }})
}

export default getAllUsers;
