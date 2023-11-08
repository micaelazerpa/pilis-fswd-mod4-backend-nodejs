import { Request, Response } from "express";
import { Recipe } from "../entity/Recipe";
import { User } from "../entity/User";

interface UserBody {
    name: string;
    description: string;
    image: string;
    ingredients: string;
    preparation: string;
    time: string;
}

export const getRecipes = async (req: Request, res: Response) => {
    console.log('entrando...');
    try {
        const recipes = await Recipe.find();
        console.log('recetas: --->'), recipes;
        return res.json(recipes);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

export const getRecipe = async (req: Request, res: Response) => {
    try {
        const { id } = req.params;
        const recipe = await Recipe.findOneBy({ id: parseInt(id) });

        if (!recipe) return res.status(404).json({ message: "Recipes not found" });

        return res.json(recipe);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

export interface Payload {
    id: number
    email: string
    password: string
    active: boolean
    createdAt: Date
    updatedAt: Date
}

export const createRecipe = async (req: Request, res: Response) => {
    const { name, description, image, ingredients, preparation, time } = req.body; //obtengo los valores
    const userPayload = req.user as Payload
    console.log('-------------------creando receta---------------')
    try {
        console.log('-------------------entro usuario---------------', req.user)
        const user = await User.findOne({
            where: { id: userPayload.id }
        })

        if (user) {
            const recipe = new Recipe();
            recipe.name = name;
            recipe.description = description,
                recipe.image = image,
                recipe.ingredients = ingredients,
                recipe.preparation = preparation,
                recipe.time = time,
                recipe.user = user

            await recipe.save();

            console.log('-------------------receta guardada---------------')

            /* user.recipes = recipe
            await user.save();  */
            return res.json(recipe);
        }

    } catch (error) {
        console.log('error---------------', error)
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

export const updateRecipe = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const recipe = await Recipe.findOneBy({ id: parseInt(id) });
        if (!recipe) return res.status(404).json({ message: "Not recipe found" });

        await Recipe.update({ id: parseInt(id) }, req.body);

        return res.sendStatus(204);
    } catch (error) {
        if (error instanceof Error) {
            console.log('-------------------no se pudo editar--------------')
            return res.status(500).json({ message: error.message });
        }
    }
};

export const deleteRecipe = async (req: Request, res: Response) => {
    const { id } = req.params;
    try {
        const result = await Recipe.delete({ id: parseInt(id) });

        if (result.affected === 0)
            return res.status(404).json({ message: "Recipe not found" });

        return res.sendStatus(204);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};