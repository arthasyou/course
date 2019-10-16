import Vue from 'vue'
import Router from 'vue-router'

import Home from '../views/Home.vue'
import EtymologyBase from '../views/etymology/Base.vue'

Vue.use(Router)

export default new Router({
  // mode: 'history',
  // base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },

    // Etymology
    {
      path: '/etymology/base',
      name: 'EtymologyBase',
      component: EtymologyBase,
    },
    

  ]
})