<template>
	<div class="ml-64 p-4">
		<div class="mb-6 flex items-center justify-between">
			<div class="inline-flex rounded-md shadow-sm" role="group">
				<button
					class="tanimation-tag inline-flex items-center rounded-l-lg border border-gray-200 bg-white px-4 py-2.5 text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:text-primary-700"
					type="button"
					data-modal-target="propertiesWindow"
					data-modal-toggle="propertiesWindow"
				>
					<svg aria-hidden="true" class="mr-2 h-4 w-4 fill-current" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
						<path
							d="M5 4a1 1 0 00-2 0v7.268a2 2 0 000 3.464V16a1 1 0 102 0v-1.268a2 2 0 000-3.464V4zM11 4a1 1 0 10-2 0v1.268a2 2 0 000 3.464V16a1 1 0 102 0V8.732a2 2 0 000-3.464V4zM16 3a1 1 0 011 1v7.268a2 2 0 010 3.464V16a1 1 0 11-2 0v-1.268a2 2 0 010-3.464V4a1 1 0 011-1z"
						></path>
					</svg>
					Свойства
				</button>
				<button
					class="animation-tag inline-flex items-center rounded-r-md border border-gray-200 bg-white px-4 py-2.5 text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:text-primary-700"
					type="button"
					data-modal-target="eventsWindow"
					data-modal-toggle="eventsWindow"
				>
					<svg aria-hidden="true" class="mr-2 h-4 w-4 fill-current" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
						<path
							fill-rule="evenodd"
							d="M2 9.5A3.5 3.5 0 005.5 13H9v2.586l-1.293-1.293a1 1 0 00-1.414 1.414l3 3a1 1 0 001.414 0l3-3a1 1 0 00-1.414-1.414L11 15.586V13h2.5a4.5 4.5 0 10-.616-8.958 4.002 4.002 0 10-7.753 1.977A3.5 3.5 0 002 9.5zm9 3.5H9V8a1 1 0 012 0v5z"
							clip-rule="evenodd"
						></path>
					</svg>
					События
				</button>
			</div>
			<div class="inline-flex rounded-md shadow-sm" role="group" v-if="employee?.is_staff">
				<button
					class="rounded-l-lg bg-blue-700 px-4 py-2.5 text-sm font-medium text-white hover:bg-blue-800"
					type="button"
					@click="() => handleToggleOffcanvas()"
				>
					<v-icon class="mr-2 h-4 w-4 fill-current" name="fa-edit" />
					Редактор
				</button>
				<button
					type="button"
					class="animation-tag border-b border-t border-success-900 bg-transparent px-4 py-2.5 text-sm font-medium text-success-900 hover:bg-success-900 hover:text-white focus:z-10"
					@click="() => saveSchema()"
				>
					<v-icon class="mr-2 h-4 w-4 fill-current" name="fa-save" />
					Сохранить
				</button>
				<button
					type="button"
					class="animation-tag inline-flex items-center rounded-r-md bg-error-700 px-4 py-2.5 text-sm font-medium text-white hover:bg-error-800 focus:outline-none disabled:bg-neutral-600"
					:disabled="currentTargetID == ''"
					@click="() => deleteItem()"
				>
					<v-icon class="mr-2 h-4 w-4 fill-current" name="fa-trash" />
					Удалить
				</button>
			</div>
		</div>
		<div>
			<div class="absolute right-0 mr-4 w-min rounded-md border border-warn-600 p-4 text-sm font-medium text-warn-600">
				<pre class="h-full max-h-[calc(100vh_-_69px_-_7.5rem)] w-80 overflow-auto">{{ items }}</pre>
			</div>
			<div class="viewport" @click="selectNone()">
				<div v-if='items.length == 0'>
					Схема не существует.
				</div>
				<div
					v-for="item in items"
					:key="item.id"
					:data-target-id="item.id"
					:class="{ item: true, target: item.id == currentTargetID }"
					:style="getItemStyle(item)"
					@click.stop="() => selectItem(item)"
				>
					<img :src="item?.image" />
				</div>
				<Moveable
					ref="moveable"
					v-if="currentTargetID != '' && employee?.is_staff"
					:target="['.target']"
					:draggable="true"
					:rotatable="true"
					:resizable="true"
					@drag="onDrag"
					@resize="onResize"
					@rotate="onRotate"
				/>
			</div>
		</div>
	</div>

	<div
		id="drawer-example"
		class="fixed left-0 top-0 z-40 h-screen w-64 overflow-y-auto bg-white transition-transform dark:bg-gray-800"
		:class="open ? undefined : '-translate-x-full'"
		tabindex="-1"
		aria-labelledby="drawer-label"
	>
		<div class="h-full overflow-y-hidden bg-gray-50 px-3">
			<div class="mb-5 border-b py-5 pl-2.5">
				<RouterLink class="self-center whitespace-nowrap text-xl font-semibold" to="/"> КРОН-ТМ </RouterLink>
			</div>
			<div class="mb-5 h-[calc(100vh_-_69px_-_1.25rem)] w-full text-gray-900">
				<div class="h-full overflow-y-auto">
					<button
						class="animation-tag relative inline-flex w-full items-center justify-center px-4 py-2 text-sm font-medium hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:text-primary-700"
						type="button"
						v-for="item in shapes"
						:key="item?.id"
					>
						<img class="h-16 w-auto" :src="item?.image" @click="items.push(createItem('', item.image, 156, 156))" />
					</button>
				</div>
			</div>
		</div>
	</div>

	<!-- properties modal -->
	<div
		id="propertiesWindow"
		tabindex="-1"
		aria-hidden="true"
		class="fixed left-0 right-0 top-0 z-50 hidden h-[calc(100%-1rem)] w-full overflow-y-auto overflow-x-hidden p-4 md:inset-0 md:h-full"
	>
		<div class="relative h-full w-full max-w-4xl md:h-auto">
			<!-- Modal content -->
			<div class="relative rounded-lg bg-white shadow dark:bg-gray-700">
				<!-- Modal header -->
				<div class="flex items-start justify-between rounded-t border-b p-4 dark:border-gray-600">
					<h3 class="text-xl font-semibold text-gray-900 dark:text-white">{{ `${facility?.name}: Свойства` }}</h3>
					<button
						type="button"
						class="ml-auto inline-flex items-center rounded-lg bg-transparent p-1.5 text-sm text-gray-400 hover:bg-gray-200 hover:text-gray-900 dark:hover:bg-gray-600 dark:hover:text-white"
						data-modal-hide="propertiesWindow"
					>
						<svg aria-hidden="true" class="h-5 w-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
							<path
								fill-rule="evenodd"
								d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
								clip-rule="evenodd"
							></path>
						</svg>
						<span class="sr-only">Close modal</span>
					</button>
				</div>

				<!-- Modal body -->
				<div class="p-4">
					<table class="w-full text-left text-sm text-gray-500">
						<thead class="bg-gray-50 text-xs uppercase text-gray-700">
							<tr>
								<th scope="col" class="px-6 py-4">№</th>
								<th scope="col" class="px-6 py-4">Описание</th>
								<th scope="col" class="px-6 py-4">Быстрое</th>
							</tr>
						</thead>
						<tbody class="h-full max-h-[640px] overflow-y-auto">
							<tr
								class="text-white"
								:class="
									item?.color == 'success-600'
										? 'bg-success-600'
										: item?.color == 'error-600'
										? 'bg-error-600'
										: item?.color == 'warning-600'
										? 'bg-warning-600'
										: item?.color == 'warn-600'
										? 'bg-warn-600'
										: ''
								"
								v-for="item in properties"
								:key="item?.uuid"
							>
								<th scope="row" class="whitespace-nowrap px-6 py-2 font-medium">{{ item?.id }}</th>
								<td class="px-6 py-2">{{ item?.description }}</td>
								<td class="px-6 py-2">{{ item?.is_fast ? 'Да' : 'Нет' }}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- events modal -->
	<div
		id="eventsWindow"
		tabindex="-1"
		aria-hidden="true"
		class="fixed left-0 right-0 top-0 z-50 hidden h-[calc(100%-1rem)] w-full overflow-y-auto overflow-x-hidden p-4 md:inset-0 md:h-full"
	>
		<div class="relative h-full w-full max-w-4xl md:h-auto">
			<!-- Modal content -->
			<div class="relative rounded-lg bg-white shadow dark:bg-gray-700">
				<!-- Modal header -->
				<div class="flex items-start justify-between rounded-t border-b p-4 dark:border-gray-600">
					<h3 class="text-xl font-semibold text-gray-900 dark:text-white">{{ `${facility?.name}: События` }}</h3>
					<button
						type="button"
						class="ml-auto inline-flex items-center rounded-lg bg-transparent p-1.5 text-sm text-gray-400 hover:bg-gray-200 hover:text-gray-900 dark:hover:bg-gray-600 dark:hover:text-white"
						data-modal-hide="eventsWindow"
					>
						<svg aria-hidden="true" class="h-5 w-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
							<path
								fill-rule="evenodd"
								d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
								clip-rule="evenodd"
							></path>
						</svg>
						<span class="sr-only">Close modal</span>
					</button>
				</div>
				<!-- Modal body -->
				<div class="p-4">
					<table class="w-full text-left text-sm text-gray-500">
						<thead class="bg-gray-50 text-xs uppercase text-gray-700">
							<tr>
								<th scope="col" class="px-6 py-4">№</th>
								<th scope="col" class="px-6 py-4">Свойство</th>
								<th scope="col" class="px-6 py-4">Значение свойства</th>
								<th scope="col" class="px-6 py-4">Подтверждено</th>
							</tr>
						</thead>
						<tbody class="h-full max-h-[640px] overflow-y-auto">
							<tr class="text-gray-700" v-for="item in events" :key="item?.uuid">
								<th scope="row" class="whitespace-nowrap px-6 py-2 font-medium">{{ item?.id }}</th>
								<td class="px-6 py-2">{{ item?.property_id }}</td>
								<td class="px-6 py-2">{{ item?.property_value }}</td>
								<td class="px-6 py-2">{{ item?.confirm_at }}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import { nextTick } from 'vue'
	import Moveable from 'vue3-moveable'

	import { initDrawers, initDropdowns, initModals } from 'flowbite'

	import EmployeeModuleApi from '../services/modules/EmployeeModuleApi'
	import EventModuleApi from '../services/modules/EventModuleApi'
	import FacilityModuleApi from '../services/modules/FacilityModuleApi'
	import PropertyModuleApi from '../services/modules/PropertyModuleApi'
	import ScriptModuleApi from '../services/modules/ScriptModuleApi'

	import { shapeList } from '../constants/shape'

	export default {
		components: { Moveable },
		data() {
			return {
				employee: {},
				facility: {},
				properties: [],
				events: [],
				shapes: [...shapeList],
				items: [],
				moveable: null,
				currentTargetID: '',
				script: '',
				script_id: {},
				open: false,
				schema: null
			}
		},
		methods: {
			handleToggleOffcanvas() {
				this.open = !this.open
			},
			createItem(title, imageSrc, width, height) {
				return {
					id: Math.random(0, 999),
					title,
					x: 0,
					y: 0,
					z: 0,
					w: width,
					h: height,
					r: 0,
					background: `url('${imageSrc}') no-repeat center/contain`
				}
			},
			deleteItem() {
				const index = this.items.findIndex(v => v.id === this.currentTargetID)
				if (index !== -1) {
					this.items.splice(index, 1)
					this.currentTargetID = ''
				}
			},
			getItemStyle(item) {
				let t = `translate(${item.x}px, ${item.y}px)`
				if (item.r != 0) t += ` rotate(${item.r})`

				return {
					width: item.w + 'px',
					height: item.h + 'px',
					zIndex: item.z,
					background: item.background,
					transform: t,
					border: 'none'
				}
			},
			findItem(el) {
				const id = el.dataset.targetId
				return this.items.find(v => v.id == id)
			},
			selectItem(item) {
				this.currentTargetID = ''
				nextTick(() => (this.currentTargetID = item.id))
			},
			selectNone() {
				this.currentTargetID = ''
			},
			onDrag(e) {
				const item = this.findItem(e.target)
				if (!item) return

				item.x = e.beforeTranslate[0]
				item.y = e.beforeTranslate[1]

				e.target.style.transform = e.transform
			},
			onResize(e) {
				const item = this.findItem(e.target)
				if (!item) return

				item.w = e.width
				item.h = e.height

				e.target.style.width = `${e.width}px`
				e.target.style.height = `${e.height}px`
			},
			onRotate(e) {
				const item = this.findItem(e.target)
				if (item) {
					item.r = e.beforeRotate
					e.target.style.transform = e.drag.transform
				}
			},
			async saveSchema() {
				const schema = JSON.stringify(this.items)

				try {
					await ScriptModuleApi.post(this.facility.name, schema)
					await FacilityModuleApi.put(this.facility.id, this.script_id)
					return true
				} catch (error) {
					try {
						await ScriptModuleApi.put(this.script, schema)
						return true
					} catch (error) {
						console.error('Ошибка сохранения схемы:', error)
						return false
					}
				}
			}
		},
		async mounted() {
			initDrawers
			initDropdowns
			initModals
			if (this.$route.path == '/schemas/1') this.schema = 2
			else if (this.$route.path == '/schemas/2') this.schema = 1
			else this.schema = 0
			try {
				const { data } = await EmployeeModuleApi.profile()
				this.employee = data
			} catch (error) {
				console.error(`Ошибка получения данных профиля: ${error}`)
			}
			try {
				const {
					data: { results }
				} = await PropertyModuleApi.detail(`?facility_id=${this.$route.params.id}`)
				this.properties = results
			} catch (error) {
				console.error(error)
			}
			try {
				const {
					data: { results }
				} = await EventModuleApi.detail(`?facility_id=${this.$route.params.id}`)
				this.events = results
			} catch (error) {
				console.error(error)
			}
			if (this.script !== null) {
				try {
					const { data } = await ScriptModuleApi.detail(`?facility_id=${this.$route.params.id}`)
					this.items = JSON.parse(data.results[this.schema].design)
					this.script_id = data.id
				} catch (error) {
					console.log(error)
				}
			}
		},
		watch: {
			'$route.params': {
				immediate: true,
				async handler() {
					try {
						const { data } = await FacilityModuleApi.detail(this.$route.params.id)
						this.facility = data
						this.script = data.script_id
					} catch (error) {
						console.error(error)
					}
				}
			}
		}
	}
</script>
