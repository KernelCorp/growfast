server '176.9.25.194', roles: %w{app db web}, ssh_options: {
                           user: 'mkonin',
                           forward_agent: true,
                           password: fetch(:password),
                           auth_methods: %w(password)
                       }
set :deploy_to, '/var/www/growfast'

set :shared_path, "#{deploy_to}/shared"
set :current_path, "#{deploy_to}/current"
# puma
set :puma_user, fetch(:user)
set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"    #accept array for multi-bind
set :puma_default_control_app, "unix://#{shared_path}/tmp/sockets/pumactl.sock"
set :puma_conf, "#{shared_path}/puma.rb"
set :puma_access_log, "#{shared_path}/log/puma_access.log"
set :puma_error_log, "#{shared_path}/log/puma_error.log"
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 8]
set :puma_workers, 0
set :nginx_use_ssl, false
set :nginx_server_name, 'growfast.ru'
set :puma_worker_timeout, nil
set :puma_init_active_record, false
set :puma_preload_app, true
