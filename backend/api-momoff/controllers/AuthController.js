const User = require('../models/user');
const { validationResult } = require('express-validator');
const bcrypt  = require('bcryptjs');
const dbClient = require('../utils/db');
const { v4: uuidv4 } = require('uuid');
//const redisClient = require('../utils/redis'); "redis": "^2.8.0",


class AuthController {


  static async postSignup(req, res) {

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const { email, password, name, confirmPassword } = req.body;


    console.log(req.body);
    if (!email) {
      res.status(400).send({
        errors: true,
        message:  'Missing email',
      });
      return;
    }
    if (!password && !confirmPassword) {
      res.status(400).send({
        errors: true,
        message:  'password non fourni',
      });
      return;
    }

    if (password != confirmPassword) {
      res.status(400).send({
        errors: true,
        message: 'Passwords ne concorde pas',
      });
      return;
    }

    try {
      const existingUser = await dbClient.checkUsers(email)
      console.log(existingUser)
      if (existingUser && existingUser.email == email) {
        return res.status(400).json({ errors: true, message: 'Cet email est déjà utilisé.' });
      }

      const hashedPassword = await bcrypt.hash(password, 12); 
      const passwordUser = hashedPassword;
      const newUser = { email, passwordUser, name };
      await dbClient.createUser(newUser)
      return res.status(201).json({ errors: false, message: 'Inscription réussie.', data: newUser });
    } catch (error) {
      console.error(error);
      return res.status(500).json({errors:true, message: 'Erreur serveur.', error: error });
    }

  }

  static async postLogin(req, res) {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: true, message: errors.array() });
    }
    const { email, password } = req.body;

    if (!email) {
      res.status(400).send({
        errors: true,
        message: 'Missing email',
      });
      return;
    }
    if (!password) {
      res.status(400).send({
        errors: true,
        message: 'Missing password',
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
        //await redisClient.set(key, logUser._id.toString(), 43200)
        delete logUser.passwordUser;
        return res.status(200).json({errors: false, message:"Connecté avec succes", data: logUser, token: key});
      }
    }

    return res.status(401).json({errors: true, message: "Nom d'utilisateur ou mot de passe incorrect"});
      
    } catch (error) {
      console.error(error);
      return res.status(500).json({errors: true, message: 'Erreur serveur.', error: error });
    }

  }

  // Add ONG
  static async postSignupOng(req, res) {

    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: true,
        message:  errors.array() });
    }

    const { name, desc, tel, email, date_creation, obj1, obj2 } = req.body;


    console.log(req.body);
    if (!email && !date_creation && !name && !desc, !tel && !obj1) {
      res.status(400).json({
        errors: true,
        message: "Assurez de ne pas laisser vide les champs obligatoires",
        comments: ["email", "date_creation", "name", "desc", "tel", "obj1"],
        data: null
      });
      return;
    }

    try {
      const existingOng = await dbClient.checkOng(email)
      console.log(existingOng)
      if (existingOng && existingOng.email == email) {
        return res.status(400).json({ errors: true, message: 'Cet email est déjà utilisé.' });
      }

      
      const newOng = { name, desc, tel, email, date_creation, obj1, obj2 };
      await dbClient.addOng(newOng)
      return res.status(201).json({ errors: false, message: 'ONG enregistré avec succes.', data: newOng });
    } catch (error) {
      console.error(error);
      return res.status(500).json({errors:true, message: 'Erreur serveur.', error: error });
    }

  }

}

module.exports = AuthController;

/*module.exports = {
    signup: signup
  };  */
