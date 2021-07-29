console.log("%c Projects app is running","background: #222; color: #bada55; padding:15px")

const App = {

	data() {
		return {
			projects: [],
			tasks: [],
			name: '',
			idProject: 0,
			idTask: 0,
			taskSwitcher: false,
			info: []
		}
	},
	methods:{
		async openProject(id) {
		const res = await fetch(`/api/projects/${id}`)
		this.tasks = await res.json()
		this.clearList(id)
		this.taskSwitcher = false
	},
	clearList(id) {
		this.idProject = id
	},
	openTask(id) {
		this.myFilter(id)
		this.idTask = id		
	},
	myFilter(id) {
		if(this.idTask != id){
      this.taskSwitcher = true;
		}
		if(this.idTask == id){
      this.taskSwitcher = false;
		}
    }
	},
	async mounted() {
		const res = await fetch('/api/projects')
		this.projects = await res.json()
	}
	 
}

const myApp = Vue.createApp(App).mount("#app")
