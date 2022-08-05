module.exports = {
	pages: {
		index: {
			entry: 'src/main.js',
			template: 'public/index.html',
			filename: 'index.html',
		},
		secondary: {
			entry: 'src/main.js',
			template: 'public/secondary.html',
			filename: 'secondary.html',
		},
	},
	publicPath: '',
	productionSourceMap: false,
	outputDir: undefined,
	assetsDir: undefined,
	runtimeCompiler: undefined,
	parallel: undefined,
	css: undefined,
};
