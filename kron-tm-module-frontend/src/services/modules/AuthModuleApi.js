import { $axios } from '../'

const apiUrl = {
	base: 'auth',
	auth: {
		login: '/login/',
		logout: '/logout/'
	}
}

class AuthModuleApi {
	login(userdata) {
		return $axios.post(`${apiUrl.base}${apiUrl.auth.login}`, userdata)
	}

	logout(token) {
		return $axios.post(`${apiUrl.base}${apiUrl.auth.logout}`, token)
	}
}

export default new AuthModuleApi()
