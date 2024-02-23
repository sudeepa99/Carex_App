import express from 'express'
import {  updateUser,deleteUser} from '../controllers/userController.js'

const router = express.Router();
import { verifyUser } from '../utils/verifyToken.js';
//update User
router.put('/:id',verifyUser,updateUser);
//delete User 

router.delete('/:id',verifyUser,deleteUser);


export default router;