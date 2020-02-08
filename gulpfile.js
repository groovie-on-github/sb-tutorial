var gulp = require('gulp'),
    sass = require('gulp-sass'),
    sourcemaps = require('gulp-sourcemaps'),
    minifyCss = require('gulp-minify-css'),
    plumber = require('gulp-plumber');

gulp.task('sass', function(done){
  gulp.src('src/main/resources/scss/*.scss')
    .pipe(plumber())
    .pipe(sourcemaps.init())
    .pipe(sass())
    .pipe(minifyCss())
    .pipe(sourcemaps.write('./maps'))
    .pipe(gulp.dest('src/main/resources/static/css'))
    done()
});
