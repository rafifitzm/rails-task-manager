import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

import TasksController from "./tasks_controller.js"
Stimulus.register("tasks", TasksController)

export { application }
