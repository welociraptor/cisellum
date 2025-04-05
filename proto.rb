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

file "/home/welociraptor.linux/.proto/.prototools" do
    content IO.read('.prototools')
end


file '/home/welociraptor.linux/.config/fish/conf.d/proto.fish' do
    content 'proto activate fish | source'
end

execute 'add proto to path' do
    'fish -c fish_add_path ~/.proto/bin'
end

file 'proto.sh' do
    action :delete
end
