import { $axios } from '../'

class FacilityModuleApi {
	list() {
		return $axios.get('/facilities/')
	}

	detail(id, filter) {
		if (filter) return $axios.get(`/facilities/${id}?${filter}`)
		else return $axios.get(`/facilities/${id}`)
	}

	put(id, script) {
		return $axios.patch(`/facilities/${id}`, {
			script_id: script
		})
	}
}

export default new FacilityModuleApi()
