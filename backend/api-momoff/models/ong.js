const mongoose = require('mongoose');


const ongSchema = new mongoose.Schema({
  email: {
    type: String,
    required: true,
    unique: true,
  },
  tel: {
    type: String,
    required: true,
    unique: true
  },
  desc: {
    type: String,
    required: true
  },
  name: {
    type: String,
    required: true,
  },
  dateCreated: {
    type: String,
    required: true
  },
  Obj1 : {
    type: String,
  },
  Obj2 : {
    type: String,
  },
  createdAt: {
    type: Date,
    default: Date.now,
  },
});

const User = mongoose.model('Ong', ongSchema);

module.exports = User;
