import { $axios } from '../'

class EmployeeModuleApi {
	profile() {
		return $axios.get('/profile/')
	}
}

export default new EmployeeModuleApi()
