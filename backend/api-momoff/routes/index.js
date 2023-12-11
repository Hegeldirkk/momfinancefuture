//const AppController = require('../controllers/AppController');
const AuthController = require('../controllers/AuthController');
const { Router } = require('express');

const router = Router();

router.get('/', (req, res) => {
  res.status(200).json({"error": false, "message": "you are welcome!", project: "Momo Finance Future", desc: "MoMoFinanceFuture is an innovative mobile application that leverages the power of Mobile Money (MoMo) to facilitate charitable donations while emphasizing their impact on job creation and financial inclusion."});
});

// Authenticate user
router.post('/signup', AuthController.postSignup);
router.post('/login', AuthController.postLogin);
router.get('/welcome', (req, res) => {
  res.status(200).json({"error": false, "message": "you are welcome!", project: "Momo Finance Future", desc: "MoMoFinanceFuture is an innovative mobile application that leverages the power of Mobile Money (MoMo) to facilitate charitable donations while emphasizing their impact on job creation and financial inclusion."});
});

module.exports = router;