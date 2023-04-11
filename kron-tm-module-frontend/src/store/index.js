import { createStore } from 'vuex'

import employee from './modules/EmployeeModule'

export default createStore({
	modules: { employee }
})
