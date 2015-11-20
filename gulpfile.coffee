configs =
  __dirname : __dirname

configs.scss =
  includePaths: require('./index').includePaths
  scssFiles   : ['app/**/*.scss', 'styles/**/*.scss']

configs.serve =
  scssFiles: ['app/**/*.scss', 'styles/**/*.scss']

### END CONFIG ###
loadTasksModule = require __dirname + '/node_modules/appirio-gulp-tasks/load-tasks.coffee'

loadTasksModule.loadTasks configs
