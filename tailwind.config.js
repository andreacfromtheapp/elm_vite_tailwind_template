module.exports = {
  content: [
    './index.html',
    './src/js/main.js',
    './src/css/styles.css',
    './src/elm/*.elm'
  ],
  theme: {
    extend: {},
    fontFamily: {
      sans: ['Lexend Deca', 'sans-serif']
    }
  },
  // https://tailwindcss.com/docs/plugins#official-plugins
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/aspect-ratio'),
    // https://daisyui.com/docs/install/
    require('daisyui')
  ],
  // daisyUI config (optional)
  daisyui: {
    themes: ['light', 'dark']
  }
}
