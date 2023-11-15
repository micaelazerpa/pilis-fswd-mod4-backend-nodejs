import { Router } from "express";
import {getUsers, getUser, deleteUser} from "../controllers/user.controller";
import {signIn, signUp, updateUser, refresh } from '../controllers/userValidate.controller'
import passport from 'passport'

const router = Router();

router.get("/users", getUsers);
router.get("/users/:id", getUser);
//router.post("/users", createUser);

//Agregar para jwt
router.post('/signup', signUp);
router.post('/signin', signIn);
router.post('/token', refresh);

router.put("/users/:id", updateUser);
router.delete("/users/:id", deleteUser);



export default router;