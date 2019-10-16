require('./bootstrap');

import Vue from 'vue';

import router from './plugins/router';
import store from './plugins/store';
import vuetify from './plugins/vuetify';
import App from './App.vue';

const app = new Vue({
	router,
  store,
  vuetify,
	render: h => h(App)
}).$mount('#app');