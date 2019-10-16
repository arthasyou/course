import Vue from 'vue';
import Vuetify from 'vuetify';
import 'vuetify/dist/vuetify.min.css'
import en from 'vuetify/es5/locale/en';
import zhHans from 'vuetify/es5/locale/zh-Hans';
import '@mdi/font/css/materialdesignicons.css';

Vue.use(Vuetify);

export default new Vuetify({
	lang: {
		locales: { en, zhHans },
		current: 'zhHans',
  },
  icons: {
    iconfont: 'mdi',
  },  
});

