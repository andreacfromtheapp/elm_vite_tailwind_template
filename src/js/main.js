import '../css/styles.css'
import { Elm } from '../elm/Main.elm'

const app = Elm.Main.init({
  // get window size with flags
  flags: {
    win_width: window.innerWidth,
    win_height: window.innerHeight
  },

  // Start the Elm application.
  node: document.querySelector('main')
})
