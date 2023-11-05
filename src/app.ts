import express from 'express'
import morgan from 'morgan';
import cors from 'cors';
import userRoutes from "./routes/user.router";
import recipeRoutes from "./routes/recipe.router";
const app = express()

import passportMiddleware from './middleware/passport';
import passport from 'passport'
import passportLocal from "passport-local";

//midellwarse
app.use(morgan('dev'));
app.use(cors());
app.use(express.json());

//Agregar para jwt
app.use(express.urlencoded({extended: false}));
app.use(passport.initialize());
passport.use(passportMiddleware);

app.use("/api", userRoutes);
app.use("/api", recipeRoutes);


export default app;