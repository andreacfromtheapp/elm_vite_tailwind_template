import { defineConfig } from 'vite'
import elmPlugin from 'vite-plugin-elm'
import { ViteWebfontDownload } from 'vite-plugin-webfont-dl'
import { ViteFaviconsPlugin } from 'vite-plugin-favicon'
import compress from 'vite-plugin-compress'

export default defineConfig({
  plugins: [
    elmPlugin(),
    ViteWebfontDownload(),
    ViteFaviconsPlugin({
      logo: './src/img/Elm_logo.svg',
      favicons: {
        appName: 'elm_vite_template',
        appDescription:
          'Opinionated set up with Elm, Tailwind CSS, Vite, and lots more',
        developerName: 'Andrea Callea',
        developerURL: null, // prevent retrieving from the nearest package.json
        icons: {
          coast: false,
          yandex: false,
          windows: false
        }
      }
    }),
    imagetools(),
    compress() // bug: https://github.com/alloc/vite-plugin-compress/issues/10
  ]
})
