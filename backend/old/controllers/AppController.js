const { validationResult } = require('express-validator');
const dbClient = require('../utils/db');



class AppController {
  static getStatus(_req, res) {
    const json = {
      redis: redisClient.isAlive(),
      db: dbClient.isAlive(),
    };
    res.status(200).send(json);
  }

  static async getStats(_req, res) {
    const json = {
      users: await dbClient.nbUsers(),
      files: await dbClient.nbFiles(),
    };
    res.status(200).send(json);
  }

  static async postCreate(_req, res) {
    const errors = validationResult(_req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }

    const {title, snippet, body } = _req.body;

    if (!title || !snippet || !body) {
      return res.status(400).json({ errors: "true", message: "All fields are required"});
    }

    try {
      const insertPost = { title, snippet, body };
      const blog = Blog(insertPost);
      await blog.save();
      return res.status(201).json({ errors: "false", message: "Post cree avec succes !" });
    } catch (error) {
      return res.status(500).json({ errors: "false", message: "error detecte", error: error });
    }

  }

  static async postRead(req, res) {

    try {
      const blog = await Blog.find();
      console.log("================================");
      console.log(blog);
      return res.status(200).json({ errors: "false", data: blog});
    } catch (error) {
      return res.status(500).json({ errors: "true", message: "error detecte", data: error});
    }
  }

}


module.exports = AppController;
