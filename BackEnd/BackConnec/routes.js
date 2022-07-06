const router = require('express').Router();
const {body} = require('express-validator');
const {register} = require('./controllers/registerController');
const {login} = require('./controllers/loginController');
const {getUser} = require('./controllers/getUserController');
const db_connection = require("./dbConnection");



router.post('/register', [
    body('name',"The name must be of minimum 3 characters length")
        .notEmpty()
        .escape()
        .trim()
        .isLength({ min: 3 }),
    body('email',"Invalid email address")
        .notEmpty()
        .escape()
        .trim().isEmail(),
    body('password',"The Password must be of minimum 4 characters length").notEmpty().trim().isLength({ min: 4 }),
], register);


router.post('/login',[
    body('email',"Invalid email address")
        .notEmpty()
        .escape()
        .trim().isEmail(),
    body('password',"The Password must be of minimum 4 characters length").notEmpty().trim().isLength({ min: 4 }),
],login);

router.get('/getuser',getUser);


router.get('/user', (req, res) => {
    let sql = 'SELECT name\n' +
        'FROM jwt.users\n';
    let query = db_connection.query(sql, (err, result) => {
        if (err) {
            let error = {
                "code": err.errno,
                "message": err.message
            }
            res.status(err.errno).send(error)
        }
        res.send(result)
    })
})
router.get('/team', (req, res) => {
    let sql = 'SELECT * FROM jwt.team;';
    let query = db_connection.query(sql, (err, result) => {
        if (err) {
            let error = {
                "code": err.errno,
                "message": err.message
            }
            res.status(err.errno).send(error)
        }
        res.send(result)
    })
});



module.exports = router;