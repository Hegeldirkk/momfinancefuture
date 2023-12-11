const { mongoose } = require('mongoose');

const blogSchema = new mongoose.Schema({

    title: {
        type: String,
        required: true 
    },
    montant: {
        type: String,
        required: true
    },
    donateurnum: {
        type: String,
        required: true
    },
    ongnum: {
        type: String,
        required: true
    },
    status:{
        type: String,
        required: true
    },
    createdAt: {
        type: Date,
        default: Date.now,
      },
});

const Trans = mongoose.model('transaction', blogSchema);

module.exports = Trans;