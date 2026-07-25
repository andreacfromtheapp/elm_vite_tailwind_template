import tailwindcss from "@tailwindcss/vite";
import { defineConfig } from "vite";

import viteCompression from "vite-plugin-compression";
import elmPlugin from "vite-plugin-elm-watch";
import viteImagemin from "vite-plugin-imagemin";
import { ViteWebfontDownload } from "vite-plugin-webfont-dl";

export default defineConfig({
	build: {
		target: "esnext",
	},
	plugins: [
		elmPlugin(),
		tailwindcss(),
		ViteWebfontDownload(),
		viteImagemin({
			gifsicle: {
				optimizationLevel: 3,
				interlaced: false,
			},
			optipng: {
				optimizationLevel: 7,
			},
			mozjpeg: {
				quality: 80,
				progressive: true,
			},
			pngquant: {
				quality: [0.8, 0.9],
				speed: 10,
			},
			svgo: {
				plugins: ["preset-default"],
			},
			webp: {
				quality: 80,
				method: 4,
				nearLossless: 95,
			},
		}),
		viteCompression({
			algorithm: "brotliCompress",
		}),
	],
});
