<script>
	import { initDropdowns } from 'flowbite'

	import EmployeeModuleApi from '../services/modules/EmployeeModuleApi'
	import FacilityModuleApi from '../services/modules/FacilityModuleApi'

	export default {
		data() {
			return {
				employee: {},
				facilities: []
			}
		},
		methods: {
			async handleLogout() {
				try {
					const refreshToken = this.$store.state.employee.employee.refreshToken
					await this.$store.dispatch('onLogout', {
						refreshToken
					})
				} catch (error) {
					console.error(`Ошибка выхода: ${error}`)
				} finally {
					console.log('Успешный выход.')
				}
			}
		},

		async mounted() {
			initDropdowns()
			try {
				const { data } = await EmployeeModuleApi.profile()
				this.employee = data
			} catch (error) {
				console.error(`Ошибка получения данных профиля: ${error}`)
			} finally {
				console.log('Данные профиля получены.')
			}
			try {
				const {
					data: { results }
				} = await FacilityModuleApi.list()
				this.facilities = results
			} catch (error) {
				console.error(`Ошибка получения объектов: ${error}`)
			} finally {
				console.log('Данные получены')
			}
		}
	}
</script>

<template>
	<aside class="fixed left-0 top-0 z-40 h-screen w-64 translate-x-0 transition-transform">
		<div class="h-full bg-gray-50 px-3">
			<div class="mb-5 border-b py-5 pl-2.5">
				<router-link class="self-center whitespace-nowrap text-xl font-semibold" to="/"> КРОН-ТМ </router-link>
			</div>
			<div class="h-full w-full overflow-y-auto text-gray-900">
				<button
					v-for="item in facilities"
					:key="item?.uuid"
					class="animation-tag relative inline-flex w-full items-center px-4 py-2 text-sm font-medium hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:text-primary-700"
					@click="$router.push({ path: `/schemas/${item?.id}` })"
				>
					<v-icon class="mr-2 h-4 w-4 fill-current" name="fa-object-group" />
					{{ item?.name }}
				</button>
			</div>
			<div class="absolute bottom-0 z-50 border-t py-5 pl-2.5">
				<button
					class="animation-tag inline-flex w-full items-center justify-center rounded-lg border border-primary-700 px-4 py-2.5 text-center text-sm font-medium text-primary-700 hover:bg-primary-800 hover:text-white focus:outline-none focus:ring-4 focus:ring-primary-300"
					data-dropdown-toggle="dropdown"
					data-dropdown-placement="top"
					type="button"
					id="user-menu"
				>
					{{ employee?.username }}
				</button>
				<div class="z-10 hidden w-56 divide-y divide-gray-100 rounded-lg bg-white shadow" id="dropdown">
					<div class="px-4 py-3 text-sm text-gray-900">
						<div>{{ `${employee?.last_name} ${employee?.first_name}` }}</div>
						<div class="truncate font-medium">{{ employee?.username }}</div>
					</div>
					<ul class="py-2 text-sm text-gray-700" aria-labelledby="dropdownSmallButton" v-if="employee?.is_staff">
						<li>
							<a class="block px-4 py-2 hover:bg-gray-100" href="http://localhost:8000/admin/" target="_blank">Управление</a>
						</li>
					</ul>
					<div class="py-2">
						<button class="block w-full px-4 py-2 text-left text-sm text-gray-700 hover:bg-gray-100" @click.prevent="handleLogout">
							Выйти из аккаунта
						</button>
					</div>
				</div>
			</div>
		</div>
	</aside>

	<slot />
</template>
