import AuthModuleApi from '../../services/modules/AuthModuleApi'

export default {
	state() {
		return {
			employee: {
				token: localStorage.getItem('token') || null,
				refreshToken: localStorage.getItem('refreshToken') || null
			}
		}
	},
	getters: {},
	mutations: {
		setTokens(state, data) {
			state.employee.token = data.access
			state.employee.refreshToken = data.refresh

			localStorage.setItem('token', data.access)
			localStorage.setItem('refreshToken', data.refresh)
		},
		removeTokens(state) {
			state.employee.token = null
			state.employee.refreshToken = null

			localStorage.removeItem('token')
			localStorage.removeItem('refreshToken')
		}
	},
	actions: {
		async onLogin({ commit }, { username, password }) {
			const response = await AuthModuleApi.login({
				username,
				password
			})
			commit('setTokens', response.data)

			location.reload()
		},
		async onRegister({ commit }, { first_name, last_name, username, password }) {
			const response = await AuthModuleApi.register({
				first_name,
				last_name,
				username,
				password
			})
			commit('setTokens', response.data)

			location.reload()
		},
		async onLogout({ commit }, { refreshToken }) {
			const response = await AuthModuleApi.logout({
				refreshToken
			})
			commit('removeTokens', response.data)

			localStorage.removeItem('token')
			localStorage.removeItem('refreshToken')

			location.reload()
		},
		async onRefresh({ commit }, { refreshToken }) {
			const response = await AuthModuleApi.refresh({
				refreshToken
			})
			commit('removeTokens', response.data)

			location.reload()
		}
	}
}
