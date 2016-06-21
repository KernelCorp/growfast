# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'growfast'
set :repo_url, 'https://github.com/KernelCorp/growfast.git'
# set :sidekiq_pid, File.join(shared_path, 'pids', 'sidekiq.pid')


set :password, ask('Server password:', nil, echo: false)

# set :linked_files, fetch(:linked_files, []).push('config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'pids',  'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')


after 'deploy:publishing', 'deploy:restart'
