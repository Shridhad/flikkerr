gulp = require 'gulp'
# gutil = require 'gulp-util'

coffee = require 'gulp-coffee'
# concat = require 'gulp-concat'
# uglify = require 'gulp-uglify'
sass = require 'gulp-sass'
# refresh = require 'gulp-livereload'

http = require 'http'
path = require 'path'

PATHS = {
  src :{
    coffee: 'app/**/*.coffee'
  },
  dest: {
    js: 'lib/'
  }
}

gulp.task 'coffee', ->
	gulp.src(PATHS.src.coffee)
		# .pipe(concat 'scripts.coffee')
		.pipe(do coffee)
		# .pipe(do uglify)
		.pipe(gulp.dest PATHS.dest.js)
		# .pipe(refresh server)


gulp.task 'default', ->
  gulp.run coffee
