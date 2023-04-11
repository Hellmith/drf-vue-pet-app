import { $axios } from '../'

class ScriptModuleApi {
	list() {
		return $axios.get('/scripts/')
	}

	detail(id) {
		return $axios.get(`scripts/${id}`)
	}

	post(name, schema) {
		return $axios.post('/scripts/', {
			name: name,
			design: schema
		})
	}

	put(id, schema) {
		return $axios.put(`/scripts/${id}`, {
			design: schema
		})
	}
}

export default new ScriptModuleApi()
