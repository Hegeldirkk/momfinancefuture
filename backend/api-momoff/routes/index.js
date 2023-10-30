const AppController = require('../controllers/AppController');
const AuthController = require('../controllers/AuthController');
const { Router } = require('express');

const router = Router();

router.get('/', (req, res) => {
  res.status(200).json({"error": false, "message": "you are welcome!", project: "Momo Finance Future", desc: "MoMoFinanceFuture is an innovative mobile application that leverages the power of Mobile Money (MoMo) to facilitate charitable donations while emphasizing their impact on job creation and financial inclusion."});
});

// check status and stats of db
router.get('/status', AppController.getStatus);
router.get('/stats', AppController.getStats);

// Authenticate user
router.post('/signup', AuthController.postSignup);
router.post('/login', AuthController.postLogin);

// Create post and read post
router.post('/posts/create', AppController.postCreate);
router.get('/posts', AppController.postRead);

module.exports = router;