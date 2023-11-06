import { Router } from "express";
import { getRecipes, getRecipe, createRecipe, updateRecipe, deleteRecipe} from "../controllers/recipe.controller";
import passport from 'passport'

const router = Router();

router.get("/recipes", getRecipes);

router.get("/recipes/:id", getRecipe);
router.post("/recipes", passport.authenticate('jwt', { session: false }), createRecipe);
router.put("/recipes/:id", passport.authenticate('jwt', { session: false }), updateRecipe);
router.delete("/recipes/:id", passport.authenticate('jwt', { session: false }), deleteRecipe);

export default router;