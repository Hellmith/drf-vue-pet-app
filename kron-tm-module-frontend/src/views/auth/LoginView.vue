<template>
	<div class="mx-auto flex h-screen flex-col items-center justify-center px-6 py-0">
		<div class="mt-0 w-full max-w-sm rounded-lg bg-white p-0 shadow">
			<div class="space-y-4 p-6 sm:p-8 md:space-y-6">
				<span>
					<p>Добро пожаловать в:</p>
					<h1 class="text-2xl font-bold leading-tight tracking-tight text-gray-900">КРОН-ТМ</h1>
				</span>
				<form class="space-y-6" @submit.prevent="handleSubmitForm">
					<div>
						<label class="mb-2 block text-sm font-medium text-gray-900" for="username">Имя пользователя</label>
						<input
							class="animation-tag block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-primary-600 focus:ring-primary-600"
							v-model="employee.username"
							placeholder="john-doe@company.ru"
							name="username"
							id="username"
							type="email"
							required
						/>
					</div>
					<div>
						<label class="mb-2 block text-sm font-medium text-gray-900" for="password">Пароль</label>
						<input
							class="animation-tag block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-primary-600 focus:ring-primary-600"
							v-model="employee.password"
							placeholder="••••••••"
							name="password"
							id="password"
							type="password"
							required
						/>
					</div>
					<button
						class="animation-tag w-full rounded-lg bg-primary-600 px-5 py-2.5 text-center text-sm font-medium text-white hover:bg-primary-700 focus:outline-none focus:ring-4 focus:ring-primary-300"
						type="submit"
					>
						Авторизоваться
					</button>
				</form>
			</div>
		</div>
	</div>
</template>

<script>
	import { useToast } from 'vue-toastification'

	export default {
		setup() {
			const toast = useToast()
			return { toast }
		},
		data() {
			return {
				employee: {
					username: '',
					password: ''
				}
			}
		},
		methods: {
			async handleSubmitForm() {
				const { username, password } = this.employee
				try {
					await this.$store.dispatch('onLogin', {
						username,
						password
					})
					this.toast.success('Успешная авторизация! Перенаправление...', {
						timeout: 4000
					})
				} catch (error) {
					this.toast.error('Не найдено активной учетной записи с указанными данными!', {
						timeout: 4000
					})
				} finally {
					this.toast.info('Запрос на авторизацию отправлен!', {
						timeout: 2000
					})
				}
			}
		}
	}
</script>
