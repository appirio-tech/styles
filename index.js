var path = require('path');
var stylesDir = __dirname + '/styles'

function includePaths() {
  return require('node-neat').includePaths.concat(stylesDir);
}

module.exports = {

  includePaths: includePaths()

};
