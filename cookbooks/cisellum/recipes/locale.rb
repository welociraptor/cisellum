file '/etc/locale.gen' do
  content 'en_US.UTF-8 UTF-8'
end

execute 'locale-gen' do
  command 'locale-gen'
end
