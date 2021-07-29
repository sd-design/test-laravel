console.log("%c Projects app is running","background: #222; color: #bada55; padding:15px")

const App = {

	data() {
		return {
			projects: [],
			tasks: [],
			name: '',
			idProject: 0,
			idTask: 0,
			info: []
		}
	},
	methods:{
		async openProject(id) {
		const res = await fetch(`/api/projects/${id}`)
		this.tasks = await res.json()
		await this.clearList(id)
	},
	clearList(id) {
		this.idProject = id
	},
	openTask(id) {
		this.idTask = id
	}
	},
	async mounted() {
		const res = await fetch('/api/projects')
		this.projects = await res.json()
	}
	 
}

Vue.createApp(App).mount("#app")
