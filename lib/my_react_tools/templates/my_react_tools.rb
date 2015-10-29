config = Rails.application.config
config.browserify_rails.commandline_options = "-t [ reactify --es6 target --es5 ]"

config.react.server_renderer_pool_size  ||= 1  # ExecJS doesn't allow more than one on MRI
config.react.server_renderer_timeout    ||= 20 # seconds
config.react.server_renderer = React::ServerRendering::SprocketsRenderer
config.react.server_renderer_options = {
  files: ["react.js", "views/views.js"], # files to load for prerendering
  replay_console: true,                 # if true, console.* will be replayed client-side
}

config.assets.paths << "vendor/bower_components/"
