import { $axios } from '../'

class PropertyModuleApi {
	list() {
		return $axios.get('/properties/')
	}

	detail(id, filter) {
		if (filter) return $axios.get(`/properties/${id}?${filter}`)
		else return $axios.get(`/properties/${id}`)
	}
}

export default new PropertyModuleApi()
