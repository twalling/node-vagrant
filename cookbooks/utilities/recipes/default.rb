execute "install_foreman" do
    user "root"
    command "gem install --version 0.60.2 foreman"
end

execute "install_node_inspector" do
    user "root"
    command "npm install -g node-inspector"
end
