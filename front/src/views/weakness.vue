<template>

  <body>


  <div class=" container .cols-1 ">


    <img src="../../../../../../Pictures/pokemon.jpg" height="212" width="350">
    <button> <a href="http://localhost:8081/team" class="buttonT">Team</a></button>
    <div class="bar">
      <input
          type="text"
          v-model.trim="search"
          placeholder="Search pokemon..."
          @keyup="pokemonn"
      /><br />
    </div>
    <ul><li v-for="pokemon in pokemonn" :key="pokemon.id">

    </li>
    </ul>


    <div class="row row-cols-1 row-cols-sm-3 g-4">

      <div :key="index" v-for="(pokemon,index) in pokemon " >


        <div id="contenu1" >


          <div  :class="[pokemon.type1]" class="derriere">

            <p>bug <br>{{pokemon.bug}} </p>
            <p>dragon<br>{{pokemon.attack}} </p>
            <p>electric<br>{{pokemon.defense}} </p>
            <p>fairy<br>{{pokemon.fairy}} </p>
            <p>fight<br>{{pokemon.fight}} </p>
            <p>fire<br>{{pokemon.fire}} </p>
            <p>flying<br>{{pokemon.flying}} </p>
            <p>ghost<br>{{pokemon.ghost}} </p>

            <p>grass<br>{{pokemon.grass}} </p>
            <p>ground<br>{{pokemon.ground}} </p>
            <p>ice<br>{{pokemon.ice}} </p>
            <p>normal<br>{{pokemon.normal}} </p>
            <p>poison>{{pokemon.poison}} </p>
            <p>psychic<br>{{pokemon.psychic}} </p>
            <p>rock<br>{{pokemon.rock}} </p>
            <p>steel<br>{{pokemon.steel}} </p>
            <p>water<br>{{pokemon.water}} </p>

          </div>


          <div :class="[pokemon.type1]" class="devant"  >

            <h5 class="card-title"> {{ pokemon.nom_pok}}  </h5>
            <br>

            <img role="poke" :src="pokemon.image_pok"  class="cardd" alt="img pokemon">

            <br>
            <br>
            <br>

            <h6>{{pokemon.type1}}<br>
              {{pokemon.type2}}<br>
              #{{pokemon.id_pok}}
            </h6>


          </div>



        </div>
        <div>
        </div>



      </div>
    </div>

  </div>

  </body>

</template>




<script>

import axios from "axios";
export default {

  name: 'pokemon',
  data() {
    return {
      pokemon: "",
      search: "",
      pokemonNoSearch:"",


    }
  },
  /***pokedex***/

  mounted() {
    axios
        .get('http://localhost:3001/pokedex')

        .then((reponse) => {
          let token =  localStorage.getItem('SavedToken')
          console.log(token)
          axios.defaults.headers.common['Authorization'] = 'Bearer ' + token;
          this.pokemon = reponse.data;
          this.pokemonNoSearch= reponse.data
          console.log(this.pokemon)
        })


        .catch(error => {
          if (error.response) {
            window.location.replace("../login");
          }
        });
  },

  /***SEARCH***/

  methods: {
    pokemonn() {
      fetch("http://localhost:3001/pokedex")
          .then(response => response.json())
          .then(res => {
            if (this.search) {
              this.pokemon = res.filter(pokemon =>
                  pokemon.nom_pok.toLowerCase().includes(this.search.toLowerCase())
              )

            }
            else{
              this.pokemon = this.pokemonNoSearch
            }

          });
    }




  },
  created() {
    this.pokemonn();
  }

}









</script>





<style scoped>

body{
  background: #262626;
}


h5{
  color: #262626;
}

h6{
  font-size: 30px;
  color: #262626;
}








img[role=pokee]{
  width: 300px;


}



img[role=poke]{
  height: 200px;
  width: 200px;


}



/***rotation 3D flip***/

#contenu1{
  color:hsla(0,0%,100%,.8);
  position:relative;
  margin:2rem auto;
  -webkit-perspective:600px;
  perspective:600px}

#contenu1 div  {
  position:absolute;
  left:0;
  top:0;
  box-shadow:0 8px 5px hsla(0,0%,0%,.2);
  transition:.8s}


#contenu1 .derriere
{
  outline:1px solid transparent;
  overflow:hidden;
  backface-visibility:hidden;
  transform-style:preserve-3d;
  transform:rotatey(-180deg);
  -webkit-transform-style:preserve-3d;
  -webkit-backface-visibility:hidden;
  -webkit-transform:rotatey(-180deg)
}


#contenu1 div.devant
{
  outline:1px solid transparent;
  overflow:hidden;
  transform-style: preserve-3d;
  backface-visibility:hidden;
  -webkit-transform-style:preserve-3d;
  -webkit-backface-visibility:hidden;
}
#contenu1:hover .derriere
{
  transform:rotatey(0);
  -webkit-transform:rotatey(0)}


#contenu1:hover div.devant  {
  -webkit-transform:rotatey(180deg);
  transform:rotatey(180deg)}

.derriere p{
  color: #262626;
  word-wrap:break-word;
  text-align:left;
  font-size:1.25rem}


#contenu1 .derriere
{
  outline:1px solid transparent;
  overflow:hidden;
  backface-visibility:hidden;
  transform-style:preserve-3d;
  transform:rotatex(-180deg);
  -webkit-transform-style:preserve-3d;
  -webkit-backface-visibility:hidden;
  -webkit-transform:rotatey(-180deg)}

#contenu1:hover .derriere
{
  transform:rotatey(0);
  -webkit-transform:rotatey(0)}


#contenu1 {height:460px;width:240px}
#contenu1 div {width:130%;height:450px;padding:20px}

.bar{
  color: #ffcb05;
}
/***COLOR CARD***/
.fire{
  background-color: #ffd1b5  ;
}
.water{
  background-color: #c2f3ff;
}
.grass{
  background-color: #d2f2c2  ;
}
.rock{
  background-color: #f0e09c ;
}
.electric{
  background-color: #fff1ba ;
}
.psychic{
  background-color: #ffc9da ;
}
.ghost{
  background-color: #dbbaff ;
}

.normal{
  background-color: #e6e6c3 ;
}
.fighting{
  background-color: #fcada9 ;
}
.ground{
  background-color: #e0ccb1 ;
}
.ice{
  background-color: #e8feff ;
}
.dragon{
  background-color: #c4bdff ;
}
.bug{
  background-color: #e0e8a2 ;
}
.poison{
  background-color: #f7cdf7 ;
}
.fairy{
  background-color: #ffdee5 ;
}
.flying{
  background-color: #eae3ff;
}



</style>