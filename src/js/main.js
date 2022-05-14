import '../css/styles.css'
import { Elm } from '../elm/Main.elm'

const app = Elm.Main.init({
  // Start the Elm application.
  node: document.querySelector('main')
})
