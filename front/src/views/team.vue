<template>


  <div class=" container  ">
  <img src="../../../../../../Pictures/pokemon.jpg" height="212" width="450">

  <div class="bar">
    <input
        type="text"
        v-model.trim="search"
        placeholder="Search pokemon..."
        @keyup="userr"
    /><br />
  </div>
  <ul><li v-for="user in userr" :key="user.id">

  </li>
  </ul>


  <div class="row row-cols-1 row-cols-sm-3 g-4">



  <div :key="index" v-for="(user,index) in user " >
  <p>{{user.name}}</p>
</div>

    </div>
  </div>

</template>








<script>

import axios from "axios";
export default {

  name: 'user',
  data() {
    return {
      user: null,
      search: "",
      userNoSearch:"",


    }
  },
  /***user***/

  mounted() {
    axios
        .get('http://localhost:3000/user')
        .then((reponse) => {
          this.user = reponse.data;
          this.userNoSearch= reponse.data
          console.log(this.user)
        })
  },


  /***SEARCH***/

  methods: {

    userr() {
      fetch("http://localhost:3000/user")
          .then(response => response.json())
          .then(res => {
            if (this.search) {
              this.user = res.filter(user =>
                  user.name.toLowerCase().includes(this.search.toLowerCase())
              )

            }

            else{
              this.user= this.userNoSearch
            }

          });
    }
  },
  created() {
    this.userr();
  }
}

</script>









<style scoped>



</style>