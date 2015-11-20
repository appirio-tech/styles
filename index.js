var path = require('path');
var workStylesDir = __dirname + '/styles'

function includePaths() {
  return require('node-neat').includePaths.concat(workStylesDir);
}

module.exports = {

  includePaths: includePaths()

};
