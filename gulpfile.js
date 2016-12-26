const gulp = require("gulp");
const sass = require("gulp-sass");
const babel = require("gulp-babel");
const imagemin = require("gulp-imagemin");
const minify = require("gulp-minify");
const cleanCss = require("gulp-clean-css");
const rename = require("gulp-rename");
const autoprefixer = require("gulp-autoprefixer");
const zip = require("gulp-zip");
const clean = require("gulp-clean");

const PROJECT = 'lightdm-webkit-theme-litarvan';
const VERSION = '1.0.0';

const ZIP = `${PROJECT}-${VERSION}.zip`;

const SOURCES = 'src';
const SASS_SOURCES = `${SOURCES}/scss`;
const JS_SOURCES = `${SOURCES}/js`;
const IMAGE_SOURCES = `${SOURCES}/img`;
const THEME_HTML = `${SOURCES}/index.html`;
const THEME_FILE = `${SOURCES}/index.theme`;

const DEST = 'build';
const SASS_DEST = `${DEST}/css`;
const JS_DEST = `${DEST}/js`;
const IMAGE_DEST = `${DEST}/img`;
const HTML_DEST = DEST;

const VENDOR_FOLDER = 'vendor';

const FULL_GLOB = '**/*';
const SASS_EXT = 'scss';
const JS_EXT = 'js';

const SASS_FILES = `${SASS_SOURCES}/${FULL_GLOB}.${SASS_EXT}`;
const JS_FILES = `${JS_SOURCES}/${FULL_GLOB}.${JS_EXT}`;
const IMAGE_FILES = `${IMAGE_SOURCES}/${FULL_GLOB}`;

gulp.task('default', ['dist']);
gulp.task('build', ['minify', 'copy:html', 'copy:theme']);
gulp.task('build:dev', ['sass', 'babel', 'copy:img', 'copy:html', 'copy:theme', 'copy:js']);
gulp.task('watch', ['watch:sass', 'watch:babel', 'watch:html', 'watch:img'], () => console.log('WARNING: Change *.min.css to *.css and *.min.js to *.js in index.html !\nOtherwise watching will not work !\n\nDON\'T FORGET TO REVERT BACK THEN'));
gulp.task('minify', ['minify:css', 'minify:js', 'minify:img']);

gulp.task('dist', ['build'], () => {
    return gulp.src(`${DEST}/${FULL_GLOB}`)
        .pipe(zip(ZIP))
        .pipe(gulp.dest(''))
});

gulp.task('clean', function () {
    return gulp.src([DEST, ZIP], {
        read: false
    }).pipe(clean());
});

gulp.task('sass', () => {
    return gulp.src(SASS_FILES)
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer())
        .pipe(gulp.dest(SASS_DEST));
});

gulp.task('babel', () => {
    return gulp.src(JS_FILES)
        .pipe(babel({
            presets: ['es2015']
        }))
        .pipe(gulp.dest(JS_DEST));
});

gulp.task('minify:css', ['sass'], () => {
    return gulp.src([`${SASS_DEST}/${FULL_GLOB}.css`, `!${SASS_DEST}/${FULL_GLOB}.min.css`])
        .pipe(cleanCss({
            compatibility: 'ie8'
        }))
        .pipe(rename({
            suffix: '.min'
        }))
        .pipe(gulp.dest(SASS_DEST));
});

gulp.task('minify:js', ['babel', 'copy:js'], () => {
    return gulp.src([`${JS_DEST}/${FULL_GLOB}.${JS_EXT}`, `!${JS_DEST}/${FULL_GLOB}.min.${JS_EXT}`])
        .pipe(minify({
            ext: {
                src: `.${JS_EXT}`,
                min: '.min.js'
            },
            noSource: true
        }))
        .pipe(gulp.dest(JS_DEST))
});

gulp.task('minify:img', () => {
    return gulp.src(IMAGE_FILES)
        .pipe(imagemin())
        .pipe(gulp.dest(IMAGE_DEST));
});

gulp.task('copy:img', () => {
    return gulp.src(IMAGE_FILES)
        .pipe(gulp.dest(IMAGE_DEST));
});

gulp.task('copy:html', () => {
    return gulp.src()
});

gulp.task('copy:js', () => {
    return gulp.src(['node_modules/what-input/dist/what-input.js', 'node_modules/jquery/dist/jquery.js', 'node_modules/foundation-sites/dist/js/foundation.js'])
        .pipe(gulp.dest(`${JS_DEST}/${VENDOR_FOLDER}`));
});

gulp.task('copy:html', () => {
    return gulp.src(THEME_HTML)
        .pipe(gulp.dest(HTML_DEST));
});

gulp.task('copy:theme', () => {
    return gulp.src(THEME_FILE)
        .pipe(gulp.dest(HTML_DEST));
});

gulp.task('watch:sass', () => {
    return gulp.watch(SASS_FILES, ['sass']);
});

gulp.task('watch:babel', () => {
    return gulp.watch(JS_FILES, ['babel']);
});

gulp.task('watch:html', () => {
    return gulp.watch(THEME_HTML, ['copy:html']);
});

gulp.task('watch:img', () => {
    return gulp.watch(IMAGE_FILES, ['copy:img']);
});