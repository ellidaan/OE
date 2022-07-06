NPM install
ouvrir le projet vue (front)

..\GitHub\D-POK-100-PAR_group-11front> npm run serve

http://localhost:8081/login pour se connecter
http://localhost:8081/register pour s'inscrire
http://localhost:8081/pok pour voir les pokémon 
http://localhost:8081/team pour voir sa team
http://localhost:8081/weakness pour voir weakness

ouvrir le projet BackcConnect
..\GitHub\D-POK-100-PAR_group-11\BackEnd\dbPoke>npm start
..\GitHub\D-POK-100-PAR_group-11\BackEnd\backConnec>npm start




INSERT INTO team (nom_pokk,imgg_pok) 
VALUES ('try','tryy')


router.post('/team', (req, res) => {
    let sql = 'INSERT INTO team (nom_pokk,imgg_pok) VALUES (?,?)';
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







