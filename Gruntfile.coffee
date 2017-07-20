# gruntfile = require("railswiki/gruntfile")

# module.exports = gruntfile

module.exports = (grunt) ->
  # require("load-grunt-parent-tasks")(grunt)
  require('load-grunt-plugins-from-parent')(grunt)

  grunt.loadNpmTasksFromParent "railswiki"
  # require("railswiki/gruntfile")(grunt)
