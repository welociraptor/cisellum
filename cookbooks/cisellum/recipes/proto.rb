# Install dependencies of Proto install script
package 'git'
package 'unzip'
package 'gzip'
package 'xz-utils'

remote_file 'proto.sh' do
  source 'https://moonrepo.dev/install/proto.sh'
end

execute 'install proto' do
  command 'bash proto.sh --no-profile --yes'
end

cookbook_file '/home/welociraptor.linux/.proto/.prototools' do
  source '.prototools'
end

cookbook_file '/home/welociraptor.linux/.config/fish/conf.d/proto.fish' do
  source 'proto.fish'
end

file 'proto.sh' do
  action :delete
end
