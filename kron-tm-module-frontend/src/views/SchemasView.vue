<template>
	<div class="flex h-screen w-full items-center justify-center" v-if="$route.name === 'schemas'">
		<p class="font-medium text-error-600">Объект не выбран!</p>
	</div>
	<RouterView />
</template>
