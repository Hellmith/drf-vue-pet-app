import axios from 'axios'

export const $axios = axios.create({
	baseURL: 'http://localhost:8000/api',
	headers: {
		'Content-Type': 'application/json'
	}
})

$axios.interceptors.request.use(
	function (config) {
		const token = localStorage.getItem('token')
		if (token) {
			config.headers.Authorization = `Bearer ${token}`
		}
		return config
	},
	function (error) {
		return Promise.reject(error)
	}
)
