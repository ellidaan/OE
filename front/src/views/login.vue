<template>


  <div class="loginBox">
    <img class="user" src="https://s1.qwant.com/thumbr/0x380/a/3/b9791ecbdaf7981b8f40978b2bf0d2674ab879edce4f523e4b686c6d800124/logo-Pokemon.jpg?u=https%3A%2F%2Flogos-marques.com%2Fwp-content%2Fuploads%2F2020%2F01%2Flogo-Pokemon.jpg&q=0&b=1&p=0&a=0" height="150px" width="250px" alt="logo_pokemon">
    <h3>Connectez vous</h3>

    <div class="inputBox">
      <label for="uname"></label>
      <input id="uname" type="text" name="email" v-model="email" placeholder="Email">
      <label for="pass"></label>
      <input id="pass" type="password" name="mot_de_passe"  v-model="password" placeholder="Mot de passe">
    </div>
    <button v-on:click="login">Se connecter</button>
    <br><br>





    <div class="text-center">
      <a href="#">Mot de passe oublie </a>
      <br>

      <a href="http://localhost:8082/register">S'inscrire </a>
    </div>

  </div>














</template>

<script>
import axios from'axios'

export default {
  name: "login",
  data() {
    return {
      email: '',
      password: '',

    }
  },
  methods: {
    login() {
      axios
          .post('http://localhost:3000/login', {
            email:this.email,
            password:this.password,

          })
          .then((response) => {
            if (response.status >= 200 && response.status < 300) {
              let token = response.data["token"];
              console.log(token)
              localStorage.setItem("SavedToken", 'Bearer ' + token);
              window.location.replace("./pok");
            }

            else
                {
              (!this.email)
            {
              this.errors.push('Name required.');
            }


            }
          })
          .catch((error) => console.log(error));
    }
  }


}




</script>








<style scoped>

body {
  margin: 0;
  padding: 0;
  height: 100vh;
  font-family: sans-serif;
  background-size: cover;
  background: url(https://images.designtrends.com/wp-content/uploads/2015/11/04123713/Pokemon-Platinum-Background.jpg?width=600) no-repeat center;
  overflow: hidden
}




.loginBox {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 350px;
  min-height: 200px;
  background: #000000;
  opacity: 90%;
  border-radius: 10px;
  padding: 40px;
  box-sizing: border-box
}

.user {
  margin: 0 auto;
  display: block;
  margin-bottom: 20px
}

h3 {
  margin: 0;
  padding: 0 0 20px;
  color:  	#FFD700;
  text-align: center
}

.loginBox input {
  width: 100%;
  margin-bottom: 20px
}

.loginBox input[type="text"],
.loginBox input[type="password"] {
  border: none;
  border-bottom: 2px solid #262626;
  outline: none;
  height: 40px;
  color: #fff;
  background: transparent;
  font-size: 16px;
  padding-left: 20px;
  box-sizing: border-box
}

.loginBox input[type="text"]:hover,
.loginBox input[type="password"]:hover {
  color: 	#FFD700;
  border: 1px solid  	#FFD700;
  box-shadow: 0 0 5px rgba(0, 255, 0, .3), 0 0 10px rgba(0, 255, 0, .2), 0 0 15px rgba(0, 255, 0, .1), 0 2px 0 black
}

.loginBox input[type="text"]:focus,
.loginBox input[type="password"]:focus {
  border-bottom: 2px solid  	#FFD700;
}

.inputBox {
  position: relative
}

.inputBox span {
  position: absolute;
  top: 10px;
  color: #262626
}

button {
  border: none;
  outline: none;
  height: 40px;
  font-size: 16px;
  background:  	#FFD700;
  color: black;
  border-radius: 20px;
  cursor: pointer
}

.loginBox a {
  color: #2a75bb;
  font-size: 14px;
  font-weight: bold;
  text-decoration: none;
  text-align: center;
  display: block
}

a:hover {
  color: #ffcb05
}

p {
  color: #0000ff
}




</style>