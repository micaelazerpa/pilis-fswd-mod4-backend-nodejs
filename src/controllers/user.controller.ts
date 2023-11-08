import { Request, Response } from "express";
import { User } from "../entity/User";

interface UserBody {
    email: string;
    password: string;
}

export const getUsers = async (req: Request, res: Response) => {
    console.log('entrando...');
    try {
        const users = await User.find({
            relations: {
                recipes: true
            }
        });
        console.log('users: --->'), users;
        return res.json(users);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

export const getUser = async (req: Request, res: Response) => {
    try {
        const { id } = req.params;
        //const user = await User.findOneBy({ id: parseInt(id) });
        const user = await User.findOne({
            where: { id: parseInt(id) },
            relations: ['recipes']
        })

        if (!user) return res.status(404).json({ message: "User not found" });

        return res.json(user);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

export const createUser = async (req: Request, res: Response) => {
    const { email, password } = req.body; //obtengo los valores

    const user = new User();
    user.email = email;
    user.password = password;

    await user.save();

    return res.json(user);
};

export const updateUser = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const user = await User.findOneBy({ id: parseInt(id) });
        if (!user) return res.status(404).json({ message: "Not user found" });

        await User.update({ id: parseInt(id) }, req.body);

        return res.sendStatus(204);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

export const deleteUser = async (req: Request, res: Response) => {
    const { id } = req.params;
    try {
        const result = await User.delete({ id: parseInt(id) });

        if (result.affected === 0)
            return res.status(404).json({ message: "User not found" });

        return res.sendStatus(204);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

