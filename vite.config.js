import { defineConfig } from 'vite'
import elmPlugin from 'vite-plugin-elm'
import { ViteWebfontDownload } from 'vite-plugin-webfont-dl'
import compress from 'vite-plugin-compress'

export default defineConfig({
  plugins: [
    elmPlugin(),
    ViteWebfontDownload(),
    // vite-plugin-compress bugs:
    // https://github.com/alloc/vite-plugin-compress/issues/10
    // https://github.com/alloc/vite-plugin-compress/issues/15
    compress()
  ]
})
