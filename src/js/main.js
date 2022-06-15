import '../css/styles.css'
import { Elm } from '../elm/Main.elm'

// Start the Elm application.
const app = Elm.Main.init({
  node: document.querySelector('main')
})

// Change between themes manually
app.ports.changeTheme.subscribe(function (data) {
  window.document.documentElement.setAttribute('data-theme', data)
})
