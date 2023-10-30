const User = require('../models/user');
const { validationResult } = require('express-validator');
const bcrypt  = require('bcryptjs');
const dbClient = require('../utils/db');
const { v4: uuidv4 } = require('uuid');
const redisClient = require('../utils/redis');


class AuthController {


  static async postSignup(req, res) {

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const { email, password, name, confirmPassword } = req.body;

    if (!email) {
      res.status(400).send({
        error: 'Missing email',
      });
      return;
    }
    if (!password && !confirmPassword) {
      res.status(400).send({
        error: 'Missing password',
      });
      return;
    }

    try {
      const existingUser = dbClient.checkUsers(email)
      if (!existingUser) {
        return res.status(400).json({ message: 'Cet email est déjà utilisé.' });
      }

      const hashedPassword = await bcrypt.hash(password, 12); 
      const passwordUser = hashedPassword;
      const newUser = { email, passwordUser, name };
      await dbClient.createUser(newUser)
      return res.status(201).json({ errors: "false", message: 'Inscription réussie.', data: newUser });
    } catch (error) {
      console.error(error);
      return res.status(500).json({ message: 'Erreur serveur.', error: error });
    }

  }

  static async postLogin(req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    const { email, password } = req.body;

    if (!email) {
      res.status(400).send({
        error: 'Missing email',
      });
      return;
    }
    if (!password) {
      res.status(400).send({
        error: 'Missing password',
      });
      return;
    }

    try {

    const logUser = await dbClient.checkUsers(email);
    const hashedPassword = logUser.passwordUser;

    if (logUser) {
      const verificationPasswords = await  bcrypt.compare(password, hashedPassword);
      console.log(hashedPassword);
      console.log(verificationPasswords);
      if (verificationPasswords) {
        const token = uuidv4();
        const key = `momoffauth-${token}`;
        await redisClient.set(key, logUser._id.toString(), 43200)
        delete logUser.passwordUser;
        return res.status(200).json({errors: "false", data: logUser, token: key});
      }
    }

    return res.status(401).json({errors: "true", message: "Nom d'utilisateur ou mot de passe incorrecte"});
      
    } catch (error) {
      console.error(error);
      return res.status(500).json({ message: 'Erreur serveur.', error: error });
    }

  }

}

module.exports = AuthController;

/*module.exports = {
    signup: signup
  };  */
