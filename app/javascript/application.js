// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import ActiveStorageDragAndDrop from 'active_storage_drag_and_drop'

ActiveStorageDragAndDrop.start()
