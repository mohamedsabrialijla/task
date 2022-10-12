require('./bootstrap');
require('./axios');



window.Vue = require('vue').default;
import Router from './routes.js'

import Vuex from 'vuex';


Vue.component('App', require('./components/Website/layout/App.vue').default);



const app = new Vue({
    el: '#app',
    router : Router,
});



