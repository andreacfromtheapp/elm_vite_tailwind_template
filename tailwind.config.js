module.exports = {
  content: [
    './index.html',
    './src/js/main.js',
    './src/css/styles.css',
    './src/elm/**/*.elm'
  ],
  theme: {
    extend: {},
    fontFamily: {
      sans: ['Lexend Deca', 'sans-serif']
    }
  },
  plugins: [ // https://tailwindcss.com/docs/plugins#official-plugins
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/aspect-ratio'),
    require('daisyui') // https://daisyui.com/docs/install/
  ],
  daisyui: { // daisyUI config (optional)
    themes: ['light', 'dark']
  }
}
