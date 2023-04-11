import { createApp } from 'vue'

import Toast, { POSITION } from 'vue-toastification'
import 'vue-toastification/dist/index.css'

import { OhVueIcon, addIcons } from 'oh-vue-icons'
import { FaEdit, FaObjectGroup, FaTrash, FaSave } from 'oh-vue-icons/icons'

addIcons(FaObjectGroup, FaTrash, FaSave, FaEdit)

import App from './App.vue'

import router from './router'
import store from './store'

createApp(App)
	.use(Toast, {
		position: POSITION.BOTTOM_RIGHT
	})
	.use(store)
	.use(router)
	.component('v-icon', OhVueIcon)
	.mount('#app')
