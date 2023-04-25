// vite.config.js
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import autoprefixer from "autoprefixer"
// import { createVuePlugin as vue } from "vite-plugin-vue2"

const path = require("path");

export default defineConfig({
    resolve: {
        alias: {
            // vue: '@vue/compat',
            "@": path.resolve(__dirname, "./src")
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
    base: '',
    build: {
        rollupOptions: {
            output: {
                chunkFileNames: 'js/[name]-[hash].js',
                entryFileNames: 'js/[name]-[hash].js',

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

