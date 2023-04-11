import { createRouter, createWebHistory } from 'vue-router'
import store from '../store'

const router = createRouter({
	history: createWebHistory(import.meta.env.BASE_URL),
	routes: [
		{
			path: '/:pathMatch(.*)*',
			redirect: '/schemas'
		},
		{
			path: '/schemas',
			name: 'schemas',
			component: () => import('../views/SchemasView.vue'),
			children: [
				{
					path: ':id',
					name: 'detail',
					component: () => import('../views/DetailView.vue')
				}
			],
			meta: {
				requiresAuth: true
			}
		},
		{
			path: '/login',
			name: 'login',
			component: () => import('../views/auth/LoginView.vue'),
			meta: {
				requiresNoAuth: true
			}
		}
	]
})

router.beforeEach((to, from, next) => {
	const token = store.state.employee.employee.token
	if (to.matched.some(record => record.meta.requiresAuth)) {
		if (token == null) {
			next({
				name: 'login'
			})
		} else {
			next()
		}
	} else if (to.matched.some(record => record.meta.requiresNoAuth)) {
		if (token != null) {
			next({
				name: 'schemas'
			})
		} else {
			next()
		}
	} else {
		next()
	}
})

export default router
