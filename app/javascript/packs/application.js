/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// javascripts
import SimpleMDE from 'simplemde'
import Tingle from 'tingle.js'

window.SimpleMDE = SimpleMDE
window.tingle = Tingle

// stylesheets

// I have NO idea why the src/ is broken but debug/ works - it looks like src/
// is missing some extra styles that aren't being included properly. who knows.
// import "simplemde/src/css/simplemde.css"
import "simplemde/debug/simplemde.css"

import 'tingle.js/src/tingle.css'

