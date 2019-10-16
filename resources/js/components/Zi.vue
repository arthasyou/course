<template>
  <v-dialog v-model="dialog" max-width="500">
    <template v-slot:activator="{ on }">
      <v-btn text v-on="on" @click="onHanZiDetail()">{{name}}</v-btn>
    </template>
     
    <v-card
      class="mx-auto"
      max-width="500"
    >
      <v-card-title v-if="this.zi.simplified" class="display-1">
        {{this.zi.name}}({{this.zi.simplified}}) {{this.zi.main_pronunciation}}
      </v-card-title>
      <v-card-title v-else class="display-1">
        {{this.zi.name}} {{this.zi.main_pronunciation}}
      </v-card-title>
      <div class="d-flex justify-center">
        <img v-if="this.zi.img"
          height="200px"
          :src="`/img/drawing/d_${this.zi.img}.jpeg`"
        >
        <img v-else
          height="200px"
        >
      </div>
      <div class="d-flex justify-space-between mx-5 my-2">
        <div class="title text-center">
          <span>甲骨文</span><br>
          <img v-if="this.zi.oracle"
            height="70px"
            :src="`/img/oracle/o_${this.zi.img}.${this.zi.oracle}`"
          >
          <img v-else
            height="70px"
            src="/img/blank.svg"
          >
        </div>
        <div class="title text-center">
          <span>金文</span><br>
          <img v-if="this.zi.bronze"
            height="70px"
            :src="`/img/bronze/b_${this.zi.img}.${this.zi.bronze}`"
          >
          <img v-else
            height="70px"
            src="/img/blank.svg"
          >
        </div>
        <div class="title text-center">
          <span>篆文</span><br>
          <img v-if="this.zi.seal"
            height="70px"
            :src="`/img/seal/s_${this.zi.img}.${this.zi.seal}`"
          >
          <img v-else
            height="70px"
            src="/img/blank.svg"
          >
        </div>
        <!-- <div class="title text-center">
          <span>隶书</span><br>
          <img
            height="70px"
            :src="this.zi.lishu"
          >
        </div> -->
        <div class="title text-center">
          <span>楷书</span><br>
          <div class="kaiti mt-4">{{this.zi.name}}</div>
        </div>
      </div>

      <div class="d-flex justify-space-between mx-3">
        <v-card-text>
          <span class="red--text">異體字</span><br>
          <span class="text--primary">
            <span>{{this.zi.transformation}}</span><br>
          </span>
        </v-card-text>

        <v-card-text>
          <span class="grey--text">六書</span><br>
          <span class="text--primary">
            <span>{{this.zi.liushu}}</span><br>
          </span>
        </v-card-text>

        <v-card-text>
          <span class="grey--text">其他發音</span><br>
          <span class="text--primary">
            <span>{{this.zi.other_pronunciation}}</span><br>
          </span>
        </v-card-text>
      </div>

      <v-card-text>
        <span>字源本義</span><br>
        <span class="text--primary">
          <span>{{this.zi.original_meaning}}</span><br>
        </span>
      </v-card-text>

      <v-card-text>
        <span>字源釋義</span><br>
        <span class="text--primary">
          <span>{{this.zi.interpretation}}</span><br>
        </span>
      </v-card-text>

      <v-card-text>
        <span>關聯漢字示例</span><br>
        <span class="text--primary">
          <span>{{this.zi.association}}</span><br>
        </span>
      </v-card-text>

      <v-card-actions>
        <v-btn
          text
          color="orange"
          @click="dialog = false"
        >
          Close
        </v-btn>
      </v-card-actions>
  

    </v-card>
  </v-dialog>
</template>

<script>
export default {
  props: ['name', 'nameKey'],
  data () {
    return {        
      zi: { 
        name: null,
        main_pronunciation: null,
        other_pronunciation: null,
        oracel: null,
        bronze: null,
        seal: null,
        lishu: null,
        kaishu: null,
        transformation: null,
        original_meaning: null,
        interpretation: null,
        img: null,
        category: null,
        association: null,
        simplified: null,
      }, 
      dialog: false,   
      hit: true,   
    }
  },

  created () {
      // this.onHanZiDetail()
  },

  methods: {
    onHanZiDetail() {
      if(this.hit)
      {
        axios.post('/hanzi/detail', {'name': this.nameKey})
        .then(e => {
          this.hit = false;
          this.zi = e.data
          if(this.zi.name === "tu")
          {
            this.zi.name = "𠫓"
          }else if(this.zi.name === "zuo")
          {
            this.zi.name = "𠂇"
          }
        })
        .catch(err => {
          
        });
      }
      
    },

  } 

}
</script>

<style scoped>

.kaiti {
  font-family:"Kaiti TC";
  font-size:3em;
  font-weight:bold;
}

</style>this.$delete(target, key). This is the alias of the global Vue.delete.