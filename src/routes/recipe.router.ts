import { Router } from "express";
import { getRecipes, getRecipe, createRecipe, updateRecipe, deleteRecipe} from "../controllers/recipe.controller";
import {signIn, signUp, protectedEndpoint, refresh } from '../controllers/user.controller'
import passport from 'passport'
const {middleware1, middleware2} = require ('../middleware/middlewares.js');

const router = Router();

router.get("/recipes", getRecipes);

router.get("/recipes/:id", getRecipe);
router.post("/recipes", createRecipe);
router.put("/recipes/:id", updateRecipe);
router.delete("/recipes/:id", deleteRecipe);


//Agregar para jwt
router.post('/signup', signUp);
router.post('/signin', signIn);
router.post('/token', refresh);
router.post('/protected', passport.authenticate('jwt', { session: false }), protectedEndpoint);
export default router;