# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Load the SCM plugin appropriate to your project:
#
# require "capistrano/scm/hg"
# install_plugin Capistrano::SCM::Hg
# or
# require "capistrano/scm/svn"
# install_plugin Capistrano::SCM::Svn
# or
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# Include tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
# require "capistrano/rvm"
# require "capistrano/rbenv"
# require "capistrano/chruby"
# require "capistrano/bundler"
# require "capistrano/rails/assets"
# require "capistrano/rails/migrations"
# require "capistrano/passenger"

require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/bundler'
require 'capistrano/yarn'

# If you are using rbenv add these lines:
require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.2.3'

require 'dotenv'
Dotenv.load

# Copy over railswiki migrations as part of migration
before 'deploy:migrate', :copy_engine_migrations do
  on roles(:app) do
    within current_path do
      execute :rake, 'railties:install:migrations'
    end
  end
end

after 'deploy:cleanup', :allow_logs_to_be_writable_by_root do
  on roles(:app) do
    execute :chmod, "a+rw -R #{release_path}/log"
  end
end

after 'deploy:cleanup', :allow_tmp_to_be_writable_by_all do
  on roles(:app) do
    execute :chmod, "a+rw #{release_path}/tmp #{release_path}/tmp/uploads"
  end
end

after 'deploy:cleanup', :allow_uploads_to_be_writable_by_all do
  on roles(:app) do
    execute :chmod, "a+rw #{shared_path}/public/uploads"
  end
end

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
