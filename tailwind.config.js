module.exports = {
  content: [
    './index.html',
    './src/js/main.js',
    './src/css/styles.css',
    './src/elm/*.elm'
  ],
  theme: {
    extend: {},
    fontFamily: {}
  },
  // https://tailwindcss.com/docs/plugins#official-plugins
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/line-clamp'),
    require('@tailwindcss/aspect-ratio')
  ]
}
