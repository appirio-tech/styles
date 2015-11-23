configs =
  __dirname : __dirname

configs.scss =
  includePaths: require('./index').includePaths
  scssFiles   : ['app/**/*.scss', 'styles/**/*.scss']

configs.serve =
  scssFiles: ['app/**/*.scss', 'styles/**/*.scss']

configs.styleguideGenerator =
  topcoder:
    options:
      title: 'Topcoder Styleguide'
      server: true
      port: 3333
      rootPath: 'tc-styleguide'

    scssFiles: ['styles/**/*.scss', '!styles/work/**/*.scss']

    mainSCSSFile: 'app/styles/topcoder/_tc-styles.scss'

  asp:
    options:
      title: 'ASP Styleguide'
      rootPath: 'asp-styleguide'

    scssFiles: ['styles/**/*.scss', '!styles/topcoder/**/*.scss']

    mainSCSSFile: 'app/styles/topcoder/_work-styles.scss'

### END CONFIG ###
loadTasksModule = require __dirname + '/node_modules/appirio-gulp-tasks/load-tasks.coffee'

loadTasksModule.loadTasks configs
