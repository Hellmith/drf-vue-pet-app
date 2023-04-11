import { $axios } from '../'

class EventModuleApi {
	list() {
		return $axios.get('/events/')
	}

	detail(id, filter) {
		if (filter) return $axios.get(`/events/${id}?${filter}`)
		else return $axios.get(`/events/${id}`)
	}
}

export default new EventModuleApi()
