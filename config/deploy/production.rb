set :prod, :production

# The deploy location for our
set :deploy_to, '/var/www/my_app'

# Full URL for the website
set :website_url, 'http://example.com'

# Full URL and any environment-specific arguments to pass to cURL
# set :curl_command, '--user user:pass http://example.com/?flush=all&env_type=dev' # Example with BASIC auth
set :curl_command, 'http://example.com/?flush=all&env_type=dev'

# Git Branch
set :branch, 'dev-master'

# Database settings, used for taking backups and restoring databases
set :db_host, 'localhost'
set :db_name, 'db_name'
set :db_user, 'db_user'
set :db_password, 'db_password'

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
# role :app, %w{deploy@example.com}
# role :web, %w{deploy@example.com}
# role :db,  %w{deploy@example.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'example.com', user: 'deploy', roles: %w{web app db}

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
# set :ssh_options, {
#   keys: %w(/home/rlisowski/.ssh/id_rsa),
#   forward_agent: false,
#   auth_methods: %w(password)
# }
# and/or per server
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options