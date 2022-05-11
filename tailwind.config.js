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
  plugins: [require('@tailwindcss/typography')]
}
