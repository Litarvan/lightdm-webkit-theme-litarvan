// vite.config.js
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import autoprefixer from "autoprefixer"

const path = require("path");

export default defineConfig({
    resolve: {
        alias: {
            "@": path.resolve(__dirname, "./src") // for '@settings' '@x.vue' to work
        }
    },
    css: {
        postcss: {
            plugins: [
                autoprefixer({})
            ],
        },
    },
    plugins: [vue()],
    base: '', // embedded deployment https://vitejs.dev/config/shared-options.html
    build: {
        rollupOptions: {
            output: {
                chunkFileNames: 'js/[name]-[hash].js',
                entryFileNames: 'js/[name]-[hash].js',

                // images to assets dir
                // js to js dir
                // css, ttf to css dir
                // default to assets dir
                assetFileNames: ({ name }) => {
                    if (/\.(gif|jpe?g|png|svg)$/.test(name ?? '')) {
                        return 'assets/[name]-[hash][extname]';
                    }

                    if (/\.(css|ttf)$/.test(name ?? '')) {
                        return 'css/[name]-[hash][extname]';
                    }

                    // default value
                    // ref: https://rollupjs.org/guide/en/#outputassetfilenames
                    return 'assets/[name]-[hash][extname]';
                },
            }
        }
    }
})

