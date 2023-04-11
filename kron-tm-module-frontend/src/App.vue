<template>
	<div name="animation-tag">
		<AppLayout v-if="isLoggedIn">
			<RouterView />
		</AppLayout>
		<RouterView v-else />
	</div>
</template>

<script>
	import AppLayout from './layouts/AppLayout.vue'

	export default {
		components: { AppLayout },
		computed: {
			isLoggedIn() {
				return !!this.$store.state.employee.employee.token
			}
		}
	}
</script>

<style>
	@tailwind base;
	@tailwind components;
	@tailwind utilities;

	@layer components {
		.animation-tag {
			@apply transition-all ease-in-out;
		}
	}
</style>
