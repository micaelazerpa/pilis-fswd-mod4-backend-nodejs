import { User } from "../entity/User";
import { Strategy, ExtractJwt, StrategyOptions } from "passport-jwt";
require('dotenv').config()

const opts: StrategyOptions = {
  jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
  secretOrKey: process.env.JWT_SECRET || " "
};

export default new Strategy(opts, async (payload, done) => {
  try {
    const user = await User.findOneBy({ id: parseInt(payload.id) });

    if (user) {
      console.log('---------usuario ingresado--------', user)
      return done(null, user);
    }
    console.log('---------usuario no autorizado--------')
    return done(null, false);
    
  } catch (error) {
    console.log('---------error, usuario no inició sesion -----------',error);
  }
});